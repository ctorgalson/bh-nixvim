# @see https://github.com/akinsho/bufferline.nvim/
# @see https://nix-community.github.io/nixvim/plugins/bufferline/index.html
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
