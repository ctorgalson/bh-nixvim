{
  plugins = {
    blink-cmp-spell.enable = true;
  };
  opts = {
    spell = false;
    spelllang = "en_ca";
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
