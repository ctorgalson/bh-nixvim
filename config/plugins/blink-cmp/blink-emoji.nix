# @see https://github.com/moyiz/blink-emoji.nvim/
# @see https://nix-community.github.io/nixvim/plugins/blink-emoji/index.html
{
  plugins = {
    blink-emoji.enable = true;

    blink-cmp = {
      settings = {
        sources = {
          providers = {
            emoji = {
              module = "blink-emoji";
              name = "Emoji";
              opts = {
                insert = true;
              };
            };
          };
        };
      };
    };
  };
}
