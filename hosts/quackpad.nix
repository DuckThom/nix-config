{ pkgs, ... }:

{
  imports = [
    ../modules/linux
  ];

  # GUI-heavy stuff
  # home.packages = with pkgs; [
  #   ...
  # ];

  home.sessionVariables = {
    DEVICE_TYPE = "laptop";
  };

  programs.git = {
    settings.user.email = "t.wiringa@youweagency.com";
  };
}
