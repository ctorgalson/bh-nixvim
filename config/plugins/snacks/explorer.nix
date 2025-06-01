{
  plugins = {
    snacks = {
      settings = {
        explorer = {
          enabled = true;
          replace_netrw = true;
        };
      };
    };
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>e";
      action = ''<cmd>lua Snacks.explorer()<cr>'';
      options = {
        desc = "File Explorer";
      };
    }
  ];
}
