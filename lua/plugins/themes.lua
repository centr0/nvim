return {
  {
    "navarasu/onedark.nvim",
    lazy = false,
    opts = {
      style = "darker",
      term_colors = true,
      highlights = {
        SnacksIndent = { fg = "#3b4048" },
        SnacksIndentScope = { fg = "#4b5263" },
      },
    },
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = true,
    opts = {},
  },
  {
    "sho-87/kanagawa-paper",
    lazy = true,
    opts = {
      colors = {
        palette = {
          -- bg
          -- highlight line bg
          sumiInk5 = "#2A2A37",
        },
      },
    },
  },
  {
    "rose-pine/neovim",
    lazy = true,
    name = "rose-pine",
    opts = {
      variant = "",
      styles = {
        transparency = false,
        italic = false,
        bold = false,
      },
      highlight_groups = {
        CursorLine = { bg = "#1e1c2c", blend = 100 },
        Cursor = { bg = "#ffffff", fg = "#000000" },
        Comment = { italic = true },
      },
    },
  },
  {
    "sainnhe/sonokai",
    lazy = true,
    opts = {},
    config = function()
      vim.g.sonokai_transparent_background = "1"
      vim.g.sonokai_enable_italic = "1"
      vim.g.sonokai_style = "andromeda"
      vim.g.sonokai_colors_override = {
        bg1 = { "#181A1C", "235" },
      }
    end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    transparent = false,
    opts = {
      style = "night",
      styles = {
        comments = { italic = true },
      },
      on_colors = function(colors)
        -- colors.bg = "#111019"
        -- colors.bg_dark = "#111019"
        -- colors.bg_float = "#111019"
        -- colors.bg_sidebar = "#111019"
      end,
      on_highlights = function(highlights, colors)
        -- highlights.CursorLine = {}
      end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine",
    },
  },
}
