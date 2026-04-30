{
  import = [
    ./configs/zed-editor.nix
  ];

  home.username = "tessa";

  home.shell = {
    enableZshIntegration = true;
  };

  home.stateVersion = "25.11";

  programs.home-manager.enable = true;
}
