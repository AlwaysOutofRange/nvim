require("conform").setup({
    formatters_by_ft = {
        lua = { "stylua" },
        gleam = { "gleamf" },
    },

    formatters = {
        gleamf = {
            command = "gleam format .",
        },
    },
})
