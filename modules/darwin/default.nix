{ config, ... }:

{
  home.homeDirectory = "/Users/${config.home.username}";

  # Darwin-only tweaks
  # home.packages = with pkgs; [
  #   ...
  # ];
}
