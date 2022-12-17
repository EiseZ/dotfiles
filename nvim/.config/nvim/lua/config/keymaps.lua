function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = " "
map("n", "<Leader>ps", ":Telescope find_files<CR>", { silent = true })
map("n", "<Leader>pb", ":Telescope file_browser<CR>", { silent = true })
map("n", "<Leader>pg", ":Telescope live_grep<CR>", { silent = true })
map("n", "<Leader>px", ":Telescope projects<CR>", { silent = true })
map("n", "<Leader>`", ":ToggleTerm<CR>", { silent = true })
map("n", "<leader>", ":WhichKey '<Space>'<CR>", { silent = true })

map("n", "<Leader>tn", ":tabnext<CR>", { silent = true })
map("n", "<Leader>tp", ":tabprevious<CR>", { silent = true })
map("n", "<Leader>tN", ":tabnew<CR>", { silent = true })
map("n", "<Leader>tc", ":tabclose<CR>", { silent = true })

map("t", "<C-h>", "<C-\\><C-n>:wincmd h<CR>", { silent = true })
map("t", "<C-j>", "<C-\\><C-n>:wincmd j<CR>", { silent = true })
map("t", "<C-k>", "<C-\\><C-n>:wincmd k<CR>", { silent = true })
map("t", "<C-l>", "<C-\\><C-n>:wincmd l<CR>", { silent = true })
map("t", "<Esc><Esc>", "<C-\\><C-n>", { silent = true })
map("", "<C-h>", ":wincmd h<CR>", { silent = true })
map("", "<C-j>", ":wincmd j<CR>", { silent = true })
map("", "<C-k>", ":wincmd k<CR>", { silent = true })
map("", "<C-l>", ":wincmd l<CR>", { silent = true })
