return {
    {
        "lukas-reineke/indent-blankline.nvim",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("ibl").setup()
        end,
    },

    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("lualine").setup({
                sections = {
                    lualine_c = { { "filename", path = 1 } },
                },
            })
        end,
    },

    {
        "akinsho/bufferline.nvim",
        event = "BufReadPre",
        config = function()
            require("configs.bufferline")
        end,
    },

    {
        "nvim-tree/nvim-web-devicons",
        config = function()
            require("nvim-web-devicons").setup()
        end,
    },

    {
        "nvimdev/dashboard-nvim",
        event = "VimEnter",
        config = function()
            require("configs.dashboard")
        end,
        dependencies = { { "nvim-tree/nvim-web-devicons" } },
    },
}
