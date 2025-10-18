# @see https://github.com/MeanderingProgrammer/render-markdown.nvim
# @see https://nix-community.github.io/nixvim/plugins/render-markdown/index.html
{
  plugins = {
    render-markdown = {
      enable = true;
      settings = {
        latex = {
          enabled = false;
        };
        bullet = {
          icons = [ "⦁ " "◦ " "⦁ " "◦ " ];
          right_pad = 1;
        };
        code = {
          above = " ";
          below = " ";
          border = "thick";
          language_pad = 2;
          left_pad = 2;
          position = "right";
          right_pad = 2;
          sign = false;
          width = "block";
        };
        heading = {
          border = true;
          icons = [
            "➀ "
            "➁ "
            "➂ "
            "➃ "
            "➄ "
            "➅ "
          ];
          left_pad = 1;
          position = "inline";
          right_pad = 1;
          sign = false;
          width = "block";
        };
        render_modes = [ "n" "c" "t" ];
      };
    };
  };
}
