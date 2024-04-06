require("telescope").setup({
    defaults = {
        sorting_strategy = "ascending",
        layout_config = {
            horizontal = { prompt_position = "top" },
        },
        file_ignore_patterns = { "node_modules", ".git", "vendor", "__pycache__" },
    },

    extensions = {
        fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            ase_mode = "smart_case",
        },
    },
})
