# bh-nixvim

Custom NixOS-based Neovim configuration using Nixvim. The flake produces a
single `packages.default` output — a fully self-contained Neovim binary — plus
a `formatter` and a `checks.default` test derivation.

## Usage

```bash
# Launch Neovim directly from the flake
nix run .

# Validate the configuration (runs nixvimLib.check)
nix flake check

# Format all .nix files
nix fmt
```

## Importing into a NixOS config

```nix
{
  inputs.bh-nixvim.url = "github:your-org/bh-nixvim";

  outputs = { nixpkgs, bh-nixvim, ... }: {
    nixosConfigurations.myhost = nixpkgs.lib.nixosSystem {
      modules = [
        ({ pkgs, ... }: {
          environment.systemPackages = [
            bh-nixvim.packages.${pkgs.system}.default
          ];
        })
      ];
    };
  };
}
```
