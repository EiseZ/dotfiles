local project = require("project_nvim")
project.setup({
    exclude_dirs = { "~/.cargo" },
    show_hidden = true,
    datapath = vim.fn.stdpath("data"),
    patterns = { ">latex", ">rust", ">web", ">python", ">haskell", ">c", ">cpp", ">julia",
                 ">forks", ">.config",
                 "!=lua",
                 "=pws-code" },
})
