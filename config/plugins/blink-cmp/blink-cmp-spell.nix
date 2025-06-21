{
  plugins = {
    blink-cmp-spell.enable = true;

    blink-cmp = {
      settings = {
        sources = {
          providers = {
            spell = {
              module = "blink-cmp-spell";
              name = "Spell";
              opts = {
                spell = false;
                spelllang = "en_ca";
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
      key = "<leader>S";
      action = ":set spell!<CR>";
      options.desc = "Toggle spell check";
    }
  ];
}
