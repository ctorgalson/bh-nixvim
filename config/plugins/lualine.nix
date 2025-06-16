{
  plugins = {
    lualine = {
      enable = true;
      settings = {
        options = {
          disabled_filetypes = {
            __unkeyed-1 = "snacks_dashboard";
            __unkeyed-2 = "snacks_picker_list";
          };
          section_separators = "";
          component_separators = "";
        };
        sections = {
          lualine_a = [
            "mode"
          ];
          lualine_b = [
            "branch"
          ];
        };
      };
    };
  };
}
