{
  plugins = {
    statuscol = {
      enable = true;
      settings = {
        segments = [
          {
            # Fold column
            text = [ { __raw = "require('statuscol.builtin').foldfunc"; } ];
            click = "v:lua.ScFa";
          }
          {
            # Diagnostic column
            sign = {
              # namespace = [ "nvim.vim.lsp.nixd.1.diagnostic.signs" ];
              namespace = [ "vim.lsp.nixd.1" ];
              maxwidth = 1;
              colwidth = 2;
              auto = true;
              wrap = true;
            };
            click = "v:lua.ScSa";
          }
          {
            # Line num column
            text = [ { __raw = "require('statuscol.builtin').lnumfunc"; } ];
            click = "v:lua.ScLa";
          }
          {
            # Git signs column
            sign = {
              namespace = [ "gitsigns" ];
              colwidth = 1;
              maxwidth = 1;
              auto = true;
              wrap = true;
            };
            click = "v:lua.ScSa";
          }
          {
            # Empty space column.
            text = [ " " ];
          }
        ];
      };
    };
  };
}
