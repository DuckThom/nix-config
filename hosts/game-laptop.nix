{
  imports = [
    ../modules/linux
    ../modules/programs/zed-editor.nix
  ];

  home.sessionVariables = {
    DEVICE_TYPE = "laptop";
  };
}
