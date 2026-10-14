# @see https://nix-community.github.io/nixvim/plugins/lsp/servers/html/index.html
{
  # extraPackages = with pkgs; [];

  plugins = {
    lsp = {
      servers = {
        html = {
          enable = true;
        };
      };
    };
  };
}
