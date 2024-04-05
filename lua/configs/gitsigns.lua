local icons = require("icons")

require("gitsigns").setup({
    auto_attach = true,
    attach_to_untracked = true,
    current_line_blame = false,
    current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = "overlay",
        delay = 1000,
        ignore_whitespace = false,
        virt_text_priority = 100,
    },
    sign_priority = 6,
    update_debounce = 100,
    status_formatter = nil,
    max_file_length = 40000,
    preview_config = {
        border = "single",
        style = "minimal",
        relative = "cursor",
        row = 0,
        col = 1,
    },
    yadm = {
        enable = false,
    },

  signs = {
    add = { text = icons.git.LineAdded },
    change = { text = icons.git.LineModified },
    delete = { text = icons.git.LineRemoved },
    topdelete = { text = icons.git.LineRemoved },
    changedelete = { text = icons.git.LineModified },
    untracked = { text = icons.git.FileUntracked },
  }
})
