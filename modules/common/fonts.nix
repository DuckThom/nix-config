{ pkgs, ... }:

{
  fonts = {
    fontconfig = {
      enable = true;

      defaultFonts = {
        monospace = [ "0xproto" ];
      };
    };
  };
}
