{
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
    autoindent = true;   # Copy current indent when starting a new line.
    expandtab = true;    # Use spaces instead of tabs
    shiftwidth = 2;      # Default indentation is 2 spaces
    smartindent = false; # Smart auto-indenting for C-like stuff; not useful.
    softtabstop = 2;     # Edit as if tabs are 2 spaces
    tabstop = 2;         # Display tabs as 2 spaces wide

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
}
