# @see https://nix-community.github.io/nixvim/plugins/blink-cmp/index.html
{
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
            auto_show = true;
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
        };
        signature = {
          enabled = true;
        };
        sources = {
          default = [
            "lsp"
            "path"
            "snippets"
            "buffer"
            "emoji"
            "ripgrep"
            "spell"
          ];
          cmdline = [ ];
          providers = {
            buffer = {
              max_items = 10;
              score_offset = -10;
            };

            emoji = {
              module = "blink-emoji";
              name = "Emoji";
              opts = {
                insert = true;
              };
            };

            ripgrep = {
              async = true;
              module = "blink-ripgrep";
              name = "Ripgrep";
              score_offset = -10;
              opts = {
                prefix_min_len = 3;
                context_size = 3;
                max_filesize = "1M";
                project_root_marker = ".git";
                project_root_fallback = true;
                search_casing = "--ignore-case";
                additional_rg_options = {};
                fallback_to_regex_highlighting = true;
                ignore_paths = {};
                additional_paths = {};
                debug = false;
              };
              max_items = 10;
            };

            spell = {
              module = "blink-cmp-spell";
              name = "Spell";
            };
          };
        };
      };
    };
  };
}
