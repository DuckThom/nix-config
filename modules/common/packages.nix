{ pkgs, ... }:

{
  home.packages = with pkgs; [
    git
    curl
    wget
    neovim

    # fonts
    nerd-fonts._0xproto

    # dev
    docker-client
    ddev

    # tools
    zed-editor
    bruno
    jetbrains-toolbox
  ];
}
