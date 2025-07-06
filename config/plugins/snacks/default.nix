{
  imports = [
    ./bigfile.nix
    ./dashboard.nix
    #./explorer.nix
    ./picker
  ];

  # @see https://github.com/folke/snacks.nvim/
  # @see https://nix-community.github.io/nixvim/plugins/snacks/settings/index.html
  plugins = {
    snacks = {
      enable = true;
    };
  };
}
