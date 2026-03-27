return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    opts = {},
  },
  {
    "sho-87/kanagawa-paper",
    lazy = false,
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
    lazy = false,
    name = "rose-pine",
    opts = {
      variant = "moon",
      styles = {
        transparency = true,
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
    lazy = false,
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
    transparent = true,
    opts = {
      style = "night",
      on_colors = function(colors) end,
      on_highlights = function(highlights, colors)
        highlights.CursorLine = {}
      end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
