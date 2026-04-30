{ pkgs, ... }:

{
  home.packages = with pkgs; [
    git
    curl
    wget
    neovim

    # dev
    docker-client
    ddev

    # tools
    zed-editor
    bruno
    jetbrains-toolbox
  ];
}
