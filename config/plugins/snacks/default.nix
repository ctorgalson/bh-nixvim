{
  imports = [
    ./bigfile.nix
    ./dashboard.nix
  ];

  plugins = {
    snacks = {
      enable = true;
      settings = {
      };
    };
  };
}
