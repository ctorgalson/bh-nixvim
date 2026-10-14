# @see https://github.com/hrsh7th/vscode-langservers-extracted
# @see https://nix-community.github.io/nixvim/plugins/lsp/servers/cssls/index.html
{
  plugins = {
    lsp = {
      servers = {
        cssls = {
          enable = true;
        };
      };
    };
  };
}
