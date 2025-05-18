{
  colorschemes.catppuccin = {
    enable = true;
    autoLoad = true;
    settings = {
      background = {
        dark = "mocha";
      };
      dim_inactive = {
        enabled = true;
        percentage = 0.25;
      };
      disable_underline = true;
      flavour = "auto";
      integrations = {
        cmp = true;
        gitsigns = true;
        mini = {
          enabled = true;
          indentscope_color = "";
        };
        notify = false;
        nvimtree = true;
        treesitter = true;
      };
      no_italic = true;
      styles = {
        booleans = [
          "bold"
          "italic"
        ];
        conditionals = [
          "bold"
        ];
      };
      term_colors = true;
    };
  };
}
