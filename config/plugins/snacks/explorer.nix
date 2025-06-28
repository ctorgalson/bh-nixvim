# @see https://github.com/folke/snacks.nvim/blob/main/docs/explorer.md
{
  plugins = {
    snacks = {
      settings = {
        explorer = {
          enabled = true;
        };
      };
    };
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>e";
      action = "<cmd>lua Snacks.explorer()<CR>";
      options.desc = "File Explorer";
    }
  ];
}
