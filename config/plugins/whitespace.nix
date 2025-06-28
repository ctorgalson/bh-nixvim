# @see https://github.com/johnfrankmorgan/whitespace.nvim/
# @see https://nix-community.github.io/nixvim/plugins/whitespace/index.html
{
  plugins = {
    whitespace = {
      enable = true;
      settings = {
        ignored_filetypes = [
          "blink-cmp-menu"
          "blink-cmp-signature"
          "checkhealth"
          "fzf"
          "snacks_dashboard"
          "TelescopePrompt"
        ];
        return_cursor = false;
      };
    };
  };
}

# Maybe replace with this:
# 
# -- Create augroup for whitespace management
# local whitespace_group = vim.api.nvim_create_augroup('WhitespaceManagement', { clear = true })
# 
# -- Function to highlight trailing whitespace and end-of-file newlines
# local function highlight_whitespace()
#   if vim.api.nvim_get_mode().mode == 'n' then
#     -- Clear existing matches
#     vim.fn.clearmatches()
#     
#     -- Highlight trailing whitespace
#     vim.fn.matchadd('ErrorMsg', [[\s\+$]])
#     
#     -- Highlight newlines at end of file
#     vim.fn.matchadd('ErrorMsg', [[\n\+\%$]])
#   end
# end
# 
# -- Function to remove trailing whitespace and end-of-file newlines
# local function remove_whitespace()
#   local save_cursor = vim.fn.getpos('.')
#   
#   -- Remove trailing whitespace
#   vim.cmd([[%s/\s\+$//e]])
#   
#   -- Remove newlines at end of file
#   vim.cmd([[%s/\n\+\%$//e]])
#   
#   -- Restore cursor position
#   vim.fn.setpos('.', save_cursor)
# end
# 
# -- Autocmds
# vim.api.nvim_create_autocmd({ 'BufEnter', 'InsertLeave' }, {
#   group = whitespace_group,
#   callback = highlight_whitespace,
#   desc = 'Highlight trailing whitespace in normal mode'
# })
# 
# vim.api.nvim_create_autocmd('InsertEnter', {
#   group = whitespace_group,
#   callback = function()
#     vim.fn.clearmatches()
#   end,
#   desc = 'Clear whitespace highlighting in insert mode'
# })
# 
# vim.api.nvim_create_autocmd('BufWritePre', {
#   group = whitespace_group,
#   callback = remove_whitespace,
#   desc = 'Remove trailing whitespace before saving'
# })
