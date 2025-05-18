{
  # Import all your configuration modules here
  imports = [
    ./luaConfig.nix
    ./blink-cmp.nix
    ./blink-emoji.nix
    ./bufferline.nix
    ./catppuccin.nix
    ./colorizer.nix
    ./comment.nix
    ./friendly-snippets.nix
    ./gitsigns-nvim.nix
    ./lsp.nix
    ./lualine.nix
    ./neo-tree.nix
    ./nvim-ufo.nix
    ./nvim-web-devicons.nix
    ./treesitter.nix
    ./which-key.nix
  ];

  colorscheme = "catppuccin-mocha";
  viAlias = true;
  vimAlias = true;
}
