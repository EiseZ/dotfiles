require("plugins/telescope")
require("plugins/vimtex")
require("plugins/lualine")

return require("packer").startup(function(use)
    use "wbthomason/packer.nvim"
    use "shaunsingh/nord.nvim"
    use "nvim-lua/plenary.nvim"
    use { "nvim-telescope/telescope.nvim" }
    use "junegunn/fzf"
    use { "nvim-telescope/telescope-fzf-native.nvim", run = "make" }
    use "nvim-telescope/telescope-file-browser.nvim"
    use "nvim-lualine/lualine.nvim"
    use "EdenEast/nightfox.nvim"
    use { "neoclide/coc.nvim", branch = "release" }
    use "lervag/vimtex"
    use "sirver/ultisnips"
    use { "da-h/AirLatex.vim", run = ":UpdateRemotePlugins" }
    use {"akinsho/toggleterm.nvim", tag = "*", config = function()
      require("toggleterm").setup()
    end }
end)
