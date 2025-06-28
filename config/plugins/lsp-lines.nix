{
  plugins = {
    lsp-lines = {
      enable = true;
    };
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>L";
      action = "lua require('lsp_lines').toggle";
      options.desc = "Toggle diagnostics messages";
    }
  ];
}
