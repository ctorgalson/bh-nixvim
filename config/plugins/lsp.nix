# @see https://github.com/neovim/nvim-lspconfig/
# @see https://nix-community.github.io/nixvim/plugins/lsp/index.html
{
  plugins = {
    lsp = {
      enable = true;
      servers = {
        # None of these seems to need any particular configuration.
        bashls.enable = true;
        cssls.enable = true;
        eslint.enable = true;
        gopls.enable = true;
        html.enable = true;
        jsonls.enable = true;
        marksman.enable = true;
        nixd.enable = true;
        phpactor.enable = true;
        pylyzer.enable = true;
        sqls.enable = true;
        ts_ls.enable = true;
        yamlls.enable = true;
      };
    };
  };
}
