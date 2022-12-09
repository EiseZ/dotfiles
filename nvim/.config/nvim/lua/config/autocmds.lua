vim.api.nvim_create_augroup("AUTOCMD", { clear = true })
vim.api.nvim_create_autocmd("InsertEnter", {
    group = "AUTOCMD",
    pattern = { "*" },
    command = "norm zz",
})
vim.api.nvim_create_autocmd("BufWritePre", {
    group = "AUTOCMD",
    pattern = { "*" },
    command = [[:%s/\s\+$//e]],
})
-- FIXME: BELOW HERE
vim.api.nvim_create_autocmd({ "BufWinEnter", "InsertEnter", "InsertLeave" }, {
    group = "AUTOCMD",
    pattern = { "*" },
    command = "match customInsertField /(<>)/",
})
vim.api.nvim_create_autocmd("BufWinLeave", {
    group = "AUTOCMD",
    pattern = { "*" },
    command = "call clearmatches()",
})