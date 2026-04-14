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
      local themes = {
        ayu = {
          normal = {
            a = { fg = "#151519", bg = "#68ccec", gui = "bold" },
            b = { fg = "#d9d7ce", bg = "#1b1b1f" },
            c = { fg = "#727983", bg = "#151519" },
          },
          insert = {
            a = { fg = "#151519", bg = "#bde764", gui = "bold" },
            b = { fg = "#d9d7ce", bg = "#1b1b1f" },
          },
          visual = {
            a = { fg = "#151519", bg = "#d58ff5", gui = "bold" },
            b = { fg = "#d9d7ce", bg = "#1b1b1f" },
          },
          replace = {
            a = { fg = "#151519", bg = "#e68b3f", gui = "bold" },
            b = { fg = "#d9d7ce", bg = "#1b1b1f" },
          },
          command = {
            a = { fg = "#151519", bg = "#e8bb5b", gui = "bold" },
            b = { fg = "#d9d7ce", bg = "#1b1b1f" },
          },
          inactive = {
            a = { fg = "#727983", bg = "#1b1b1f", gui = "bold" },
            b = { fg = "#727983", bg = "#1b1b1f" },
            c = { fg = "#727983", bg = "#151519" },
          },
        },
      }

      local function current_theme()
        if vim.g.colors_name == "rose-pine" then
          return "auto"
        end
        return themes[vim.g.colors_name] or themes.ayu
      end

      opts.options = opts.options or {}
      opts.options.theme = current_theme()

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

      vim.api.nvim_create_autocmd("ColorScheme", {
        group = vim.api.nvim_create_augroup("custom_lualine_theme", { clear = true }),
        callback = function()
          require("lualine").setup(vim.tbl_deep_extend("force", {}, opts, {
            options = { theme = current_theme() },
          }))
        end,
      })
    end,
  },
}
