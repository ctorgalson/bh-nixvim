{
  extraConfigLua = ''
    -- Filetype-specific indentation settings
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "python",
      callback = function()
        vim.opt_local.shiftwidth = 4
        vim.opt_local.tabstop = 4
        vim.opt_local.softtabstop = 4
      end
    })
    
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "go",
      callback = function()
        vim.opt_local.expandtab = false  -- Use actual tabs for Go
        vim.opt_local.shiftwidth = 4
        vim.opt_local.tabstop = 4
      end
    })
  '';
}
