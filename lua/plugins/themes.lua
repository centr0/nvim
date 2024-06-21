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
      },
      highlight_groups = {
        CursorLine = { bg = "#000000", blend = 50 },
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
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine",
    },
  },
}
