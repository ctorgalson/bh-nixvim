{
  plugins = {
    neo-tree = {
      enable = true;
      filesystem = {
        hijackNetrwBehavior = "open_default";
        useLibuvFileWatcher = true;
      };
    };
  };
  keymaps = [
    {
      # Toggle Neotree
      mode = "n";
      key = "<leader>e";
      action = "<cmd>Neotree toggle<CR>";
    }
  ];
}
