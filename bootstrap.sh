#!/usr/bin/env bash
set -e

REPO="https://github.com/DuckThom/nix-config.git"
TARGET="$HOME/.config/nix-config"

echo "==> Installing Nix (if needed)"
if ! command -v nix >/dev/null; then
  sh <(curl -L https://nixos.org/nix/install) --daemon
fi

echo "==> Enabling flakes"
mkdir -p ~/.config/nix
grep -q flakes ~/.config/nix/nix.conf 2>/dev/null || \
  echo "experimental-features = nix-command flakes" >> ~/.config/nix/nix.conf

echo "==> Cloning config"
if [ ! -d "$TARGET" ]; then
  git clone "$REPO" "$TARGET"
  cd "$TARGET"
else
  cd "$TARGET"
  git pull
fi

PLATFORM="$(uname -o)"

echo "==> Applying Home Manager config for $PLATFORM"
case "$PLATFORM" in
    # "Darwin")
        # nix run home-manager/master -- switch --flake .#tessa@mac
        # ;;
    "GNU/Linux")
        nix run home-manager/master -- switch --flake .#tessa@linux
        ;;
    *)
        echo "ERROR: Unknown platform $PLATFORM"
        exit 1
        ;;
esac

echo "✅ Done. Restart shell."
