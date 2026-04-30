{ pkgs, ... }:

{
  programs.zed-editor = {
    enable = true;

    userSettings = {
      format_on_save = "off";

      prettier = {
        allowed = true;
      };

      auto_indent = "syntax_aware";

      languages = {
        JavaScript = {
          code_actions_on_format = {
            "source.fixAll.eslint" = true;
          };
        };
      };

      title_bar = {
        show_sign_in = false;
        show_user_picture = false;
        show_user_menu = false;
      };

      telemetry = {
        diagnostics = false;
        metrics = false;
      };

      terminal = {
        font_family = "0xProto Nerd Font Mono";
      };

      ui_font_family = ".ZedSans";
      base_keymap = "JetBrains";
      disable_ai = true;
      ui_font_size = 16;
      buffer_font_size = 15.0;
      theme = "One Dark";
    };
  };
}
