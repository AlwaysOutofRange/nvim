local icons = require("icons")
require("nvim-tree").setup({
    update_focused_file = {
        enable = true,
        update_cwd = true,
    },
    renderer = {
        icons = {
            glyphs = {
                git = {
                    unstaged = icons.git.FileUnstaged,
                    staged = icons.git.FileStaged,
                    unmerged = icons.git.FileUnmerged,
                    renamed = icons.git.FileRenamed,
                    untracked = icons.git.FileUntracked,
                    deleted = icons.git.FileDeleted,
                    ignored = icons.git.FileIgnored,
                },
            },
        },
    },
})
