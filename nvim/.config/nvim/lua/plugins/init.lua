require("plugins/telescope")
require("plugins/vimtex")
require("plugins/catppuccin")
require("plugins/mason")
require("plugins/nvim-highlight-colors")

return require("packer").startup(function(use)
    use "wbthomason/packer.nvim"
    use { "catppuccin/nvim", { as = "mocha" } }
    use { "nvim-lua/plenary.nvim", command = { "Telescope" } }
    use { "nvim-telescope/telescope.nvim", command = { "Telescope" } }
    use { "nvim-telescope/telescope-fzf-native.nvim", run = "make", command = { "Telescope " } }
    use { "nvim-telescope/telescope-file-browser.nvim", command = { "Telescope " } }
    use "bluz71/vim-mistfly-statusline"
    use { "neoclide/coc.nvim", branch = "release" }
    use { "lervag/vimtex", ft = "tex" }
    use { "sirver/ultisnips", ft = { "tex" } }
    use { "da-h/AirLatex.vim", run = ":UpdateRemotePlugins", ft = "tex" }
    use {"akinsho/toggleterm.nvim", tag = "*", config = function()
      require("toggleterm").setup()
    end }
    use "ap/vim-css-color"
    use "brenoprata10/nvim-highlight-colors"
    use "williamboman/mason.nvim"
end)
