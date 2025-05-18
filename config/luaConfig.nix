{
  extraConfigLua = ''
    -- Basic configuration.
    vim.o.breakindent = true
    vim.o.clipboard = 'unnamedplus'
    vim.o.colorcolumn = '80'
    vim.o.expandtab = true
    vim.o.hlsearch = true
    vim.g.mapleader = ' '
    vim.g.maplocalleader = ' '
    vim.o.mouse = 'a'
    vim.o.number = true
    vim.o.shiftwidth = 2
    vim.o.signcolumn = 'yes'
    vim.o.tabstop = 2
    vim.o.termguicolors = true
    vim.o.updatetime = 300
    vim.wo.number = true

    local keymap = vim.keymap.set

    -- Toggle Neotree.
    vim.keymap.set("n", "<Leader>e", ":Neotree toggle<CR>", { desc = "Toggle file browser", remap = false })

    -- Move between and resize panes.
    --
    -- @see https://github.com/LazyVim/LazyVim/blob/879e29504d43e9f178d967ecc34d482f902e5a91/lua/lazyvim/config/keymaps.lua#L15
    --

    -- Resize window using <alt> hjkl keys.
    keymap("n", "<A-h>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })
    keymap("n", "<A-j>", "<cmd>resize -2<CR>", { desc = "Decrease window height" })
    keymap("n", "<A-k>", "<cmd>resize +2<CR>", { desc = "Increase window height" })
    keymap("n", "<A-l>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })

    -- Move to window using the <ctrl> hjkl keys.
    keymap("n", "<C-h>", "<C-w>h", { desc = "Go to left window", noremap = true })
    keymap("n", "<C-j>", "<C-w>j", { desc = "Go to lower window", noremap = true })
    keymap("n", "<C-k>", "<C-w>k", { desc = "Go to upper window", noremap = true })
    keymap("n", "<C-l>", "<C-w>l", { desc = "Go to right window", noremap = true })

    -- Likewise, but with terminals.
    keymap('t', '<esc>', '<C-\\><C-N>', { silent = true })
    keymap('t', '<C-h>', '<C-\\><C-N><cmd>wincmd h<cr>', { noremap = true, silent = true })
    keymap('t', '<C-j>', '<C-\\><C-N><cmd>wincmd j<cr>', { noremap = true, silent = true })
    keymap('t', '<C-k>', '<C-\\><C-N><cmd>wincmd k<cr>', { noremap = true, silent = true })
    keymap('t', '<C-l>', '<C-\\><C-N><cmd>wincmd l<cr>', { noremap = true, silent = true })

    -- Keymapping for leap.nvim.
    keymap({'n', 'x', 'o'}, '<C-Right>',  '<Plug>(leap-forward)')
    keymap({'n', 'x', 'o'}, '<C-Left>',  '<Plug>(leap-backward)')
    keymap({'n', 'x', 'o'}, '<C-Up>', '<Plug>(leap-from-window)')
  '';
}
