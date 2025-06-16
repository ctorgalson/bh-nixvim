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
