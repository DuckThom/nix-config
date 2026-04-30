{ config, ... }:

{
  imports = [
    ../common
  ];

  home.homeDirectory = "/home/${config.home.username}";

  # Linux-only tweaks
  # home.packages = with pkgs; [
  #   ...
  # ];
}
