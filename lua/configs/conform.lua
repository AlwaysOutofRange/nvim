require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    gleam = { "gleamf" },
    python = { "ruff_format", "isort" },
  },

  formatters = {
    gleamf = {
      command = "gleam format .",
    },
  },

  format_on_save = {
    timeout_ms = 1500,
    lsp_fallback = true
  }
})
