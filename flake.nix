{
  description = "A nixvim configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs =
    { nixvim, flake-parts, ... }@inputs:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];

      perSystem =
        { system, ... }:
        let
          pkgs = import inputs.nixpkgs {
            inherit system;
            config.allowUnfree = true;
          };
          # Modern module functions live at lib.nixvim.modules.*
          nixvimLib = nixvim.lib.nixvim.modules;
          nixvimModule = {
            imports = [ ./config ]; # import the module directly
            # Reuse our pkgs instance so allowUnfree stays enabled
            nixpkgs.pkgs = pkgs;
          };
        in
        {
          checks = {
            # Run `nix flake check .` to verify that your config is not broken
            default = nixvimLib.testNixvimWith { modules = [ nixvimModule ]; };
          };

          packages = {
            # Lets you run `nix run .` to start nixvim
            default = nixvimLib.buildNixvim nixvimModule;
          };

          formatter = pkgs.nixfmt;
        };
    };
}
