{
  # Import all your configuration modules here
  imports = [
    ./lua.nix
    ./keymaps.nix
    ./plugins/blink-cmp.nix
    ./plugins/blink-emoji.nix
    ./plugins/bufferline.nix
    ./plugins/catppuccin.nix
    ./plugins/colorizer.nix
    ./plugins/comment.nix
    ./plugins/precognition.nix
    ./plugins/friendly-snippets.nix
    ./plugins/gitsigns-nvim.nix
    ./plugins/lsp.nix
    ./plugins/lualine.nix
    ./plugins/modicator.nix
    ./plugins/nvim-web-devicons.nix
    ./plugins/snacks
    ./plugins/statuscol.nix
    ./plugins/telescope.nix
    ./plugins/treesitter.nix
    ./plugins/which-key.nix
  ];

  colorscheme = "catppuccin-mocha";

  extraConfigLua = ''
    vim.api.nvim_set_hl(0, "FoldColumn", { fg = "#9399b2" })
  '';

  globals = {
    mapleader = " ";
    maplocalleader = " ";
  };

  opts = {
    breakindent = true;
    clipboard = "unnamedplus";
    colorcolumn = "80";
    hlsearch = true;
    mouse = "a";
    number = true;
    signcolumn = "yes";
    termguicolors = true;
    updatetime = 300;

    # Tabs and indents.
    autoindent = true;  # Copy indent from current line when starting a new line
    expandtab = true;   # Use spaces instead of tabs
    shiftwidth = 2;     # Default indentation is 2 spaces
    smartindent = true; # Smart auto-indenting
    softtabstop = 2;    # Edit as if tabs are 2 spaces
    tabstop = 2;        # Display tabs as 2 spaces wide

    # Folding
    fillchars = {
      diff = "╱";
      eob = " ";
      fold = " ";
      foldclose = "󰅂";
      foldopen = "󰅀";
      foldsep = " ";
      horiz = "━";
      horizup = "┻";
      horizdown = "┳";
      msgsep = "‾";
      vert = "┃";
      vertleft = "┫";
      vertright = "┣";
      verthoriz = "╋";
    };
    foldcolumn = "1";
    foldenable = true;
    foldlevel = 99; # Folds with a level higher than this number will be closed
    foldlevelstart = -1;
    foldmethod = "expr";
    foldexpr = ''v:lua.vim.treesitter.foldexpr()'';
  };

  viAlias = true;
  vimAlias = true;
}
