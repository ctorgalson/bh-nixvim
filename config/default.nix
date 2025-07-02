{
  # Import all your configuration modules here
  imports = [
    # Config
    ./globals.nix
    ./keymaps.nix
    ./opts.nix
    ./colorschemes
    ./plugins
    ./extraPlugins
  ];

  colorscheme = "catppuccin-mocha";

  extraConfigLua = ''
    -- Toggle for :set background
    function ToggleBackground()
      if vim.o.background == 'dark' then
        vim.o.background = 'light'
      else
        vim.o.background = 'dark'
      end
    end

    -- Filetype-specific indentation settings
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "go",
      callback = function()
        vim.opt_local.expandtab = false  -- Use actual tabs for Go
        vim.opt_local.shiftwidth = 4
        vim.opt_local.tabstop = 4
      end
    })

    vim.api.nvim_create_autocmd("FileType", {
      pattern = "python",
      callback = function()
        vim.opt_local.shiftwidth = 4
        vim.opt_local.tabstop = 4
        vim.opt_local.softtabstop = 4
      end
    })

    -- FoldColumn icon colour override
    vim.api.nvim_set_hl(0, "FoldColumn", { fg = "#9399b2" })

    -- ColorColumn colour override
    -- vim.api.nvim_set_hl(0, 'ColorColumn', { fg = '#fab387' })
    -- vim.api.nvim_create_autocmd("VimEnter", {
    --   callback = function()
    --     vim.schedule(function()
    --       vim.api.nvim_set_hl(0, 'ColorColumn', { fg = '#fab387' })
    --     end)
    --   end,
    -- })

    -- Diagnostics
    vim.diagnostic.config({
      signs = {
        text = {
          [vim.diagnostic.severity.ERROR] = " ";
          [vim.diagnostic.severity.WARN] = " ";
          [vim.diagnostic.severity.HINT] = " ";
          [vim.diagnostic.severity.INFO] = " ";
        }
      }
    })

    -- Custom folds
    --
    -- Examine the parse tree structure with :lua vim.treesitter.inspect_tree()
    --
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "twig",
      callback = function()
        local query_string = [[
          [
            (statement_directive)
              (if_statement)
            (statement_directive)
              (for_statement)
            (statement_directive)
              (tag_statement)
            (output_directive)
          ] @fold
        ]]
        vim.treesitter.query.set("twig", "folds", query_string)
      end,
    })
    '';

  viAlias = true;
  vimAlias = true;
}
