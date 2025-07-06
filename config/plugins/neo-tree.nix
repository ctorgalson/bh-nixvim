# @see https://github.com/nvim-neo-tree/neo-tree.nvim
# @see https://nix-community.github.io/nixvim/plugins/neo-tree/index.html
{
  plugins = {
    neo-tree = {
      enable = true;
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>e";
      action = "<cmd>Neotree toggle<CR>";
      options.desc = "Toggle file browser";
    }
  ];
}
