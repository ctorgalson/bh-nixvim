# @see https://nix-community.github.io/nixvim/plugins/blink-cmp/index.html
{
  plugins = {
    blink-cmp = {
      enable = true;
      settings = {
        keymap = {
          preset = "super-tab";
        };
        sources = {
          default = [
            "lsp"
            "path"
            "snippets"
            "buffer"
            "spell"
            "ripgrep"
            "emoji"
          ];
          providers = {
            # dictionary = {
            #   module = "blink-cmp-dictionary";
            #   name = "Dictonary";
            #   score_offset = 100;
            #   min_keyword_length = 3;
            #   opts = { };
            # };
            emoji = {
              module = "blink-emoji";
              name = "Emoji";
              score_offset = 15;
              # Optional configurations
              opts = {
                insert = true;
              };
            };
            ripgrep = {
              async = true;
              module = "blink-ripgrep";
              name = "Ripgrep";
              score_offset = 100;
              opts = {
                prefix_min_len = 3;
                context_size = 5;
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
            };              
            spell = {
              module = "blink-cmp-spell";
              name = "Spell";
              score_offset = 100;
              opts = { };
            };
          };
        };
      };
    };
  };
}
