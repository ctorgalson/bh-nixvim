{
  imports = [
    ./bigfile.nix
    ./dashboard.nix
    ./explorer.nix
    ./picker
  ];

  plugins = {
    snacks = {
      enable = true;
    };
  };
}
