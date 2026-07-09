vim.opt.number = true
vim.opt.relativenumber = true
vim.g.mapleader = ' '

local function map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    
    vim.keymap.set(mode, lhs, rhs, options)
end
map('i', 'jj', '<Esc>')
map('n','<leader>w', ':w<CR>') 
map('n','<leader>q', ':q<CR>') 

map('n','<C-h>', '<C-w>h') 
map('n','<C-j>', '<C-w>j') 
map('n','<C-k>', '<C-w>k') 
map('n','<C-l>', '<C-w>l') 
