local luasnip = require("luasnip")

require("luasnip.loaders.from_snipmate").load({ paths = "~/.config/nvim/snippets" })

luasnip.set_config({
    updateevents = "TextChanged", "TextChangedI",
    enable_autosnippets = true,
})
