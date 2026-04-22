{ pkgs, ... }:

{
  # GUI-heavy stuff
  # home.packages = with pkgs; [
  #   ...
  # ];

  home.sessionVariables = {
    DEVICE_TYPE = "laptop";
  };

  programs.git = {
    userEmail = "t.wiringa@youweagency.com";
  };
}
