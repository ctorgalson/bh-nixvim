# @see https://github.com/nvim-neo-tree/neo-tree.nvim
# @see https://nix-community.github.io/nixvim/plugins/neo-tree/index.html
{
  plugins = {
    neo-tree = {
      enable = true;
      closeIfLastWindow = true;
      enableDiagnostics = true;
      enableGitStatus = true;
      enableModifiedMarkers = true;
      popupBorderStyle = "rounded";
      sources = [
        #"buffers"
        #"document_symbols"
        "filesystem"
        #"git_status"
      ];
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>e";
      action = "<cmd>Neotree toggle<CR>";
      options.desc = "Toggle file browser";
    }
  ];
}
