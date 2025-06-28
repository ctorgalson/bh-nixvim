# @see https://github.com/folke/snacks.nvim/blob/main/docs/bigfile.md
{
  plugins.snacks.settings.bigfile = {
    enabled = true;
    size = 1024 * 1024; # 1MB
    setup.__raw = ''
      function(ctx)
        -- Disable line numbers and relative line numbers
        vim.cmd("setlocal nonumber")

        -- Syntax highlighting
        vim.schedule(function()
          vim.bo[ctx.buf].syntax = ctx.ft
        end)

        -- Disable matchparen
        vim.cmd("let g:loaded_matchparen = 1")

        -- Disable cursor line and column
        vim.cmd("setlocal nocursorline nocursorcolumn")

        -- Disable folding
        vim.cmd("setlocal nofoldenable")

        -- Disable sign column
        vim.cmd("setlocal signcolumn=no")

        -- Disable swap file and undo file
        vim.cmd("setlocal noswapfile noundofile")
      end
    '';
  };
}
