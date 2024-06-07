local augroup = vim.api.nvim_create_augroup("user_commands", { clear = true })

vim.api.nvim_create_autocmd("TextYankPost", {
  group = augroup,
  pattern = "*",
  callback = function()
    vim.highlight.on_yank({ hlgroup = "IncSearch", timeout = 500 })
  end,
})
