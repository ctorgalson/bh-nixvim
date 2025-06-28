# @see https://github.com/tris203/precognition.nvim/
# @see https://nix-community.github.io/nixvim/plugins/precognition/index.html
{
  plugins = {
    precognition = {
      enable = true;
      settings = {
        startVisible = false;
      };
    };
  };
  keymaps = [
    {
      # Toggle on/off
      mode = "n";
      key = "<leader>pt";
      action = "<cmd>Precognition toggle<cr>";
    }
    {
      # Toggle on until next motion
      mode = "n";
      key = "<leader>pp";
      action = "<cmd>Precognition peek<cr>";
    }
  ];
}
