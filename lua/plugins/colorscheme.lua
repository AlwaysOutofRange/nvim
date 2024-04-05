return {
    {
        "rebelot/kanagawa.nvim",
        priority = 1000,
        config = function()
            require("kanagawa").setup({
                compile = true,
                theme = "dragon",
            })
        end,
    },
}
