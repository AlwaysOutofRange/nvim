local map = vim.keymap.set

map("n", "<C-s>", "<cmd> w <CR>")
map("i", "jk", "<ESC>")
map("n", "<C-c>", "<cmd> %y+ <CR>")

map("n", "<C-h>", "<cmd> wincmd h <CR>")
map("n", "<C-j>", "<cmd> wincmd j <CR>")
map("n", "<C-k>", "<cmd> wincmd k <CR>")
map("n", "<C-l>", "<cmd> wincmd l <CR>")

map("n", "<leader>e", "<cmd> NvimTreeToggle <CR>")

map(
  "n",
  "<leader>ff",
  "<cmd> Telescope find_files <CR>",
  { desc = "Find File" }
)
map("n", "<leader>fg", "<cmd> Telescope live_grep <CR>", { desc = "Live Grep" })

map("n", "<leader>gg", "<cmd> Neogit <CR>", { desc = "Git" })

map("n", "<Tab>", "<cmd> BufferNext <CR>")
map("n", "<S-Tab>", "<cmd> BufferPrevious <CR>")
map("n", "<leader>x", "<cmd> BufferClose <CR>", { desc = "Delete buffer" })

map("n", "<leader>/", function()
  require("Comment.api").toggle.linewise.current()
end)
map(
  "v",
  "<leader>/",
  "<ESC><cmd> lua require('Comment.api').toggle.linewise(vim.fn.visualmode()) <CR>"
)

map("n", "fm", function()
  require("conform").format({
    lsp_fallback = true,
    async = false,
    timeout_ms = 500,
  })
end, { desc = "Format File" })
