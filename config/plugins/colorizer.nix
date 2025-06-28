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
        };
      };
    };
  };
}

