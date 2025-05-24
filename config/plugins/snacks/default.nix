{
  imports = [
    ./bigfile.nix
  ];

  plugins = {
    snacks = {
      enable = true;
      settings = {
      };
    };
  };
}
