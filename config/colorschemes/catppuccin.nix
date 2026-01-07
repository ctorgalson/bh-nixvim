# @see https://github.com/catppuccin/nvim/
# @see https://nix-community.github.io/nixvim/colorschemes/catppuccin/index.html
{
  colorschemes = {
    catppuccin = {
      enable = true;
      autoLoad = true;
      settings = {
        background = {
          dark = "mocha";
        };
        dim_inactive = {
          enabled = true;
          percentage = 0.25;
        };
        disable_underline = true;
        flavour = "auto";
        integrations = {
          blink_cmp = {
            style = "bordered";
          };
          # bufferline
          cmp = true;
          gitsigns = true;
          lualine = true;
          native_lsp = {
            enabled = true;
          };
          notify = false;
          snacks = {
            enabled = true;
          };
          telescope = {
            enabled = true;
          };
          treesitter = true;
          which_key = true;
        };
        no_italic = true;
        styles = {
          booleans = [
            "bold"
            "italic"
          ];
          conditionals = [
            "bold"
          ];
        };
        term_colors = true;
      };
    };
  };
}
