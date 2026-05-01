{
  programs.zsh = {
    enable = true;

    shellAliases = {
      nixconfig = "cd ~/.config/nix-config";
    };
  };

  programs.oh-my-posh = {
    enable = true;
    enableZshIntegration = true;

    useTheme = "takuya";
  };
}
