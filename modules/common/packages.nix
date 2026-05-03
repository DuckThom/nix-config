{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # cli tools
    curl
    git
    neovim
    wget

    # fonts
    nerd-fonts._0xproto

    # dev
    docker-client
    ddev
    nodejs

    # gui tools
    bruno
    jetbrains-toolbox
    microsoft-edge
    zed-editor
  ];
}
