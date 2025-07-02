# @see https://github.com/catgoose/nvim-colorizer.lua/
# @see https://nix-community.github.io/nixvim/plugins/colorizer/index.html
{
  plugins = {
    colorizer = {
      enable = true;
      settings = {
        filetypes = [
          "css"
          "html"
          "javascript"
          "php"
          "python"
          "go"
        ];
        user_default_options = {
          css = true;
          mode = "virtualtext";
          names = false;
          names_custom = false;
          virtualtext = "■";
          RGB = true;
          RGBA = true;
          RRGGBB = true;
          RRGGBBAA = true;
          AARRGGBB = true;
          rgb_fn = true;
          hsl_fn = true;
        };
      };
    };
  };
}

