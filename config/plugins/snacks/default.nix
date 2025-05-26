{
  imports = [
    ./bigfile.nix
    ./dashboard.nix
    ./picker
  ];

  plugins = {
    snacks = {
      enable = true;
    };
  };
}
