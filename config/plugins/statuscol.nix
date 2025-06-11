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
              auto = {
                __raw = "\" \"";
              };
              wrap = false;
            };
            click = "v:lua.ScSa";
          }
          {
            # Diagnostic column
            sign = {
              text = [ ".*" ];
              maxwidth = 1;
              colwidth = 1;
              auto = {
                __raw = "\" \"";
              };
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
