# @see https://nix-community.github.io/nixvim/plugins/lsp/servers/cssls/index.html
{
  extraConfigLua = ''
    --Enable (broadcasting) snippet capability for completion
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.textDocument.completion.completionItem.snippetSupport = true

    vim.lsp.config('html', {
      capabilities = capabilities,
    })
  '';

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
