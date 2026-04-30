{
  programs.zsh = {
    enable = true;

    shellAliases = {
      rebuild = "home-manager switch --flake ~/.config/nix-config#tessa@linux";
      update = "git pull && home-manager switch --flake ~/.config/nix-config#tessa@linux";
    };
  };

  programs.oh-my-posh = {
    enable = true;
    enableZshIntegration = true;

    useTheme = "takuya";
  };
}
