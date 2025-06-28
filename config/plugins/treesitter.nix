# @see https://github.com/nvim-treesitter/nvim-treesitter/
# @see https://nix-community.github.io/nixvim/plugins/treesitter/index.html
{
  plugins = {
    treesitter = {
      enable = true;
      settings = {
        # All grammars enabled by default.
        folding = true;
        highlight = {
          enable = true;
        };
        indent = {
          enable = true;
        };
      };
    };
  };
}
