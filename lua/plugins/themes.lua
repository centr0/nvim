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
    "ayu-theme/ayu-vim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      vim.g.ayucolor = "mirage"

      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "ayu",
        callback = function()
          vim.api.nvim_set_hl(0, "Normal", { bg = "#181d28" })
          vim.api.nvim_set_hl(0, "NormalNC", { bg = "#181d28" })
          vim.api.nvim_set_hl(0, "SignColumn", { bg = "#181d28" })
          vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "#181d28" })
          vim.api.nvim_set_hl(0, "CursorLine", { bg = "#1c2230" })
        end,
      })
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = true,
    opts = {
      theme = "dragon",
    },
  },
  {
    "rose-pine/neovim",
    lazy = true,
    name = "rose-pine",
    opts = {
      variant = "",
      styles = {
        transparency = true,
        italic = false,
        bold = false,
      },
      highlight_groups = {
        CursorLine = { bg = "#14111c", blend = 100 },
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
        highlights.CursorLine = { bg = colors.bg_dark }
      end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "ayu",
    },
  },
}
