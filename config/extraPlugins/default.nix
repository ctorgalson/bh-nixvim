{
  imports = [ ];

  # Set up an extra plugin per-file as follows.
  #
  # The easiest way to get the hash value is to stick in a valid sha256 hash,
  # run nix-build, and copy the value from the error message when it doesn't
  # work.
  #
  # @see https://nix-community.github.io/nixvim/user-guide/faq.html#how-do-i-use-a-plugin-not-implemented-in-nixvim
  # @see https://nixos.org/manual/nixpkgs/stable/#fetchfromgithub
  #
  # { pkgs, ... }:
  #
  # {
  #   extraPlugins = [(pkgs.vimUtils.buildVimPlugin {
  #     name = "Plugin name";
  #     src = pkgs.fetchFromGitHub {
  #       owner = "owner";
  #       repo = "repo";
  #       rev = "commit-hash";
  #       hash = "sha256-iEMUYDSl/3BIPXR4aZYq5g7M3JOiRH0KbDx4wgpJYvE=";
  #     };
  #   })];
  #
  #   extraConfigLua = ''
  #     require('my-plugin').setup({foo = "bar"})
  #   '';
  # }
}
