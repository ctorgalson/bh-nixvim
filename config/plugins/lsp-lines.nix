# @see https://git.sr.ht/~whynothugo/lsp_lines.nvim
# @see https://nix-community.github.io/nixvim/plugins/lsp-lines/index.html
{
  plugins = {
    lsp-lines = {
      enable = true;
    };
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>m";
      action = {
        __raw = ''require("lsp_lines").toggle'';
      };
      options.desc = "Toggle diagnostics messages";
    }
  ];
}
