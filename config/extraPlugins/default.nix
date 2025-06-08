{
  imports = [
  ];

  # Set up an extra plugin per-file as follows.
  #
  # The easiest way to get the hash value is to stick in a valid sha256 hash,
  # run nix-build, and copy the value from the error message when it doesn't
  # work.
  #
  # {
  #   extraPlugins = [(pkgs.vimUtils.buildVimPlugin {
  #     name = "Plugin name";
  #     src = pkgs.fetchFromGithub {
  #       owner = "owner";
  #       repo = "repo";
  #       rev = "commit-hash":
  #       hash = "sha256-iEMUYDSl/3BIPXR4aZYq5g7M3JOiRH0KbDx4wgpJYvE=";
  #     };
  #   })];
  # }
}
