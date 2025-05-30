{
  plugins = {
    snacks = {
      settings = {
        explorer = {
          enabled = true;
          replace_netrw = true;
          ui_select = true;
          win = {
            input = {
              keys = {
                "<C-t>" = { 
                  __raw = ''"tab"''; 
                  mode = [ "n" "i" ]; 
                };
              };
            };
            list = {
              keys = {
                "<C-t>" = { 
                  __raw = ''"tab"''; 
                  mode = [ "n" "i" ]; 
                };
              };
            };
          };
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
