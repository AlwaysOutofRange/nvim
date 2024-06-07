local header = [[
                                                                        
          ████ ██████           █████      ██                     
         ███████████             █████                             
         █████████ ███████████████████ ███   ███████████   
        █████████  ███    █████████████ █████ ██████████████   
       █████████ ██████████ █████████ █████ █████ ████ █████   
     ███████████ ███    ███ █████████ █████ █████ ████ █████  
    ██████  █████████████████████ ████ █████ █████ ████ ██████ 
]]

local icons = require("icons")

local function pad_header()
  local logo = string.rep("\n", 18) .. header .. "\n"

  return logo
end

local opts = {
  theme = "doom",
  hide = {
    statusline = false,
  },
  config = {
    header = vim.split(pad_header(), "\n"),
    center = {
      {
        action = "Telescope find_files",
        desc = " Find File",
        icon = icons.ui.Search,
        key = "f",
      },
      {
        action = "ene | startinsert",
        desc = " New File",
        icon = icons.ui.FileBold,
        key = "n",
      },
      {
        action = "Telescope oldfiles",
        desc = " Recent Files",
        icon = icons.ui.FileOld,
        key = "r",
      },
      { action = "Lazy", desc = " Lazy", icon = icons.ui.Sleep, key = "p" },
      {
        action = "Mason",
        desc = " Mason",
        icon = icons.kinds.Package,
        key = "m",
      },
      { action = "qa", desc = " Quit", icon = icons.ui.Exit, key = "q" },
    },
    footer = function()
      local stats = require("lazy").stats()
      local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
      local info = {}
      info[1] = "⚡ Neovim loaded "
        .. stats.loaded
        .. "/"
        .. stats.count
        .. " plugins in "
        .. ms
        .. "ms"
      info[2] = ""

      return info
    end,
  },
}

for _, button in ipairs(opts.config.center) do
  button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
  button.key_format = "  %s"
end

require("dashboard").setup(opts)
