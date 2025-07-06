# @see https://github.com/hrsh7th/vscode-langservers-extracted
# @see https://nix-community.github.io/nixvim/plugins/lsp/servers/cssls/index.html
{
  extraConfigLua = ''
    --Enable (broadcasting) snippet capability for completion
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.textDocument.completion.completionItem.snippetSupport = true

    require'lspconfig'.cssls.setup {
      capabilities = capabilities,
    }
  '';

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

