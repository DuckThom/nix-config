{
  programs.git = {
    enable = true;

    settings = {
      user = {
        name = "Tessa Wiringa";
        email = "git@tjwiringa.dev";
      };

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

    signing = {
      signByDefault = true;
      format = "ssh";
      key = "~/.ssh/bw_git_signing.pub";
    };
  };
}
