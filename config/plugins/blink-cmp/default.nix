# @see https://github.com/saghen/blink.cmp
# @see https://nix-community.github.io/nixvim/plugins/blink-cmp/index.html
{
  imports = [
    ./blink-cmp-spell.nix
    ./blink-emoji.nix
  ];

  plugins = {
    blink-cmp = {
      enable = true;
      settings = {
        appearance = {
          nerd_font_variant = "normal";
          use_nvim_cmp_as_default = true;
        };
        cmdline = {
          enabled = true;
          keymap = {
            preset = "super-tab";
          };
          completion = {
            menu = {
              auto_show = true;
            };
          };
        };
        completion = {
          accept = {
            auto_brackets = {
              enabled = true;
              semantic_token_resolution = {
                enabled = false;
              };
            };
          };
          documentation = {
            auto_show = false;
            window = {
              border = "rounded";
            };
          };
          menu = {
            auto_show = true;
            border = "rounded";
            scrollbar = true;

            draw = {
              padding = 1;
              gap = 1;
            };
          };
        };
        keymap = {
          preset = "super-tab";
          "<C-space>" = [ "show_documentation" "fallback" ];
          "<C-u>" = [ "scroll_documentation_up" "fallback" ];
          "<C-d>" = [ "scroll_documentation_down" "fallback" ];
        };
        signature = {
          enabled = true;
          trigger = {
            blocked_trigger_characters = [];
            blocked_retrigger_characters = [];
            show_delay_ms = 200;
            hide_delay_ms = 4000;
          };
          window = {
            border = "rounded";
            winhighlight = "Normal:BlinkCmpSignatureHelp,FloatBorder:BlinkCmpSignatureHelpBorder,Cursor:BlinkCmpSignatureHelp";
            scrollbar = true;
          };
        };
        sources = {
          default = [
            "lsp"
            "path"
            "snippets"
            "buffer"
            "emoji"
            "spell"
          ];
          cmdline = [ ];
          providers = {
            buffer = {
              max_items = 10;
              score_offset = -10;
            };
          };
        };
      };
    };
  };
}
