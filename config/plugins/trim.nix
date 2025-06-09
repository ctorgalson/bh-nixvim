{
  plugins = {
    trim.enable = true;
  };

  autocmd = [
    {
      # Trim on save by default.
      command = "ToggleTerm";
      event = [ "VimEnter" ];
    }
  ];

  keymaps = [
    {
      mode = "n";
      key = "<leader>tt";
      action = "<cmd>Trim<CR>";
      options.desc = "Trim trailing whitespace";
    }
    {
      mode = "n";
      key = "<leader>tT";
      action = "<cmd>ToggleTrim<CR>";
      options.desc = "Toggle trim trailing whitespace on save";
    }
  ];
}
