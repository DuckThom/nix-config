{
  programs.git = {
    enable = true;
    userName = "Tessa Wiringa";
    userEmail = "git@tjwiringa.dev";

    signing = {
      signByDefault = true;
      format = "ssh";
      key = "~/.ssh/bw_git_signing.pub";
    };

    extraConfig = {
      init.defaultBranch = "main";
      pull.rebase = false;
      push.default = "simple";

      alias = {
        b = "branch";
        co = "checkout";
        st = "status";
        ds = "diff --staged";
        touch = "commit --amend --date now";
        puoh = "push -u origin HEAD";
      };
    };
  };
}
