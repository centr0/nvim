return {
  -- bufferline: change keybinds
  {
    "akinsho/bufferline.nvim",
    keys = {
      { "<Tab>", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
      { "<S-Tab>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
    },
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      -- notification timeout: 10 seconds
      timeout = 10000,
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      -- open explorer in the current window
      window = { position = "current" },
    },
  },
  {
    "folke/snacks.nvim",
    opts = {
      words = { enabled = false },
      scroll = {
        -- disable smooth scrolling
        enabled = false,
      },
      dashboard = {
        preset = {
          header = [[
███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝

           Stop ricing. Get to work.
          ]],
        },
      },
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      table.insert(opts.sections.lualine_x, 2, {
        "lsp_status",
        icon = "",
        show_name = true,
        ignore_lsp = {},
        fmt = function(str)
          str = str:lower():gsub("github", "")
          str = str:gsub("%s+", " ")
          return vim.trim(str)
        end,
        symbols = {
          separator = " | ",
        },
      })
    end,
  },
}
