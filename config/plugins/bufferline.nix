{
  plugins = {
    bufferline = {
      enable = true;
      settings = {
        options = {
          mode = "tabs";
          offsets = [
            {
              filetype = "snacks_picker_list";
              highlight = "Directory";
              text = "File Browser";
              text_align = "right";
              separator = true;
            }
          ];
        };
      };
    };
  };
}
