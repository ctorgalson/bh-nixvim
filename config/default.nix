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
  '';

  viAlias = true;
  vimAlias = true;
}
