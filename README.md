# bh-nixvim

Custom NixOS-based Neovim configuration using Nixvim. The flake produces a
single `packages.default` output — a fully self-contained Neovim binary — plus
a `formatter` and a `checks.default` test derivation.

Each `v*` tag is also published as a signed local binary-cache tarball on the
GitHub releases page, so flakeless NixOS machines can consume it — see
[Consuming on a flakeless NixOS machine](#consuming-on-a-flakeless-nixos-machine).

## Usage

```bash
# Launch Neovim directly from the flake
nix run .

# Validate the configuration (builds and runs the nixvim test derivation)
nix flake check

# Format all .nix files
nix fmt
```

## Importing into a NixOS config

```nix
{
  inputs.bh-nixvim.url = "github:ctorgalson/bh-nixvim";

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

## Consuming on a flakeless NixOS machine

Every `v*` tag publishes a GitHub release with:

- `bh-nixvim-cache.tar.gz` — a signed local binary cache containing the
  `x86_64-linux` package and its full closure, and
- release notes with the cache **public key** and the **tarball sha256**.

On the target machine:

1. Download the release tarball and extract it to `/srv/nix-cache/bh-nixvim`:

   ```bash
   curl -LO https://github.com/ctorgalson/bh-nixvim/releases/download/vX.Y.Z/bh-nixvim-cache.tar.gz
   sha256sum bh-nixvim-cache.tar.gz # compare against the release notes
   mkdir -p /srv/nix-cache/bh-nixvim
   tar -xzf bh-nixvim-cache.tar.gz -C /srv/nix-cache/bh-nixvim --strip-components=1
   ```

2. Register the cache as a substituter and add the package. The editor is
   evaluated through the `default.nix` flake-compat shim via
   `builtins.fetchTarball`, so the consumer needs no flakes:

   ```nix
   {
     nix.settings = {
       substituters = [ "file:///srv/nix-cache/bh-nixvim" ];
       trusted-public-keys = [
         # Copy from the release notes of the tag you are pinning
         "bh-nixvim:EXAMPLE"
       ];
     };

     environment.systemPackages = [
       (import (builtins.fetchTarball "https://github.com/ctorgalson/bh-nixvim/archive/refs/tags/vX.Y.Z.tar.gz")).packages.x86_64-linux.default
     ];
   }
   ```

**Warning: never re-point a published tag.** `builtins.fetchTarball` caches by
URL, so machines that already downloaded a tag keep evaluating the old
tarball even after re-downloading. To ship a change, cut a **new** tag and
move the consumer to it.

### Flake-compat shim

`default.nix` exposes the flake to non-flake tooling via
[flake-compat](https://github.com/edolstra/flake-compat). It uses the common
floating-`master` form; pinning the flake-compat revision + sha256 is a
possible follow-up hardening.

## Releasing (maintainers)

CI builds `x86_64-linux` only. Branch pushes and PRs run the `verify` job
(`nix flake check --no-build`, `nix build .#default`,
`nix build .#checks.x86_64-linux.default`). Pushing a `v*` tag runs the
`release` job, which builds, signs, and attaches `bh-nixvim-cache.tar.gz` to a
GitHub release, with the public key and tarball sha256 in the notes.

### One-time signing key setup

```bash
# Nix >= 2.19
nix key generate-secret --key-name bh-nixvim

# Older Nix
nix-store --generate-binary-cache-key bh-nixvim cache-key.sec cache-key.pub
```

- Store the private key (the secret printed by `nix key generate-secret`, or
  the contents of `cache-key.sec`) verbatim in the Actions secret
  `BHVIM_CACHE_KEY`.
- Derive the public key with
  `nix key convert-secret-to-public < <private-key-file>` (the older
  `nix-store` form writes it directly to `cache-key.pub`). CI derives and
  publishes the same key in the release notes — compare them before cutting a
  release. Keep the same key for every release, or consumers' caches will
  stop accepting newly signed store paths.
