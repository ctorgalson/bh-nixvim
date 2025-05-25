{self, ...}: {
  keymaps = [
    # Resize splits.
    {
      # Increase split width
      mode = "n";
      key = "<A-h>";
      action = "<cmd>vertical resize +2<CR>";
    }
    {
      # Decrease split height
      mode = "n";
      key = "<A-j>";
      action = "<cmd>resize -2<CR>";
    }
    {
      # Increase split height
      mode = "n";
      key = "<A-k>";
      action = "<cmd>resize +2<CR>";
    }
    {
      # Decrease split width
      mode = "n";
      key = "<A-l>";
      action = "<cmd>vertical resize -2<CR>";
    }
    # Move between splits.
    {
      # Move to pane on left
      mode = "n";
      key = "<C-h>";
      action = "<C-w>h";
    }
    {
      # Move to pane below
      mode = "n";
      key = "<C-j>";
      action = "<C-w>j";
    }
    {
      # Move to pane above
      mode = "n";
      key = "<C-k>";
      action = "<C-w>k";
    }
    {
      # Move to pane on right
      mode = "n";
      key = "<C-l>";
      action = "<C-w>l";
    }
  ];
}
