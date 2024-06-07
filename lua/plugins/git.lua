return {
  {
    "NeogitOrg/neogit",
    cmd = "Neogit",
    ft = { "diff" },

    opts = {
      signs = { section = { "", "" }, item = { "", "" } },
      disable_commit_confirmation = true,
      integrations = { diffview = true },
    },
    config = true,
  },

  {
    "sindrets/diffview.nvim",
    config = true,
  },

  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("configs.gitsigns")
    end,
  },
}
