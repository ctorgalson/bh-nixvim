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
