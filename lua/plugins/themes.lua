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
          vim.api.nvim_set_hl(0, "Normal", { bg = "#151519" })
          vim.api.nvim_set_hl(0, "NormalNC", { bg = "#151519" })
          vim.api.nvim_set_hl(0, "SignColumn", { bg = "#151519" })
          vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "#151519" })
          vim.api.nvim_set_hl(0, "CursorLine", { bg = "#1b1b1f" })
          vim.api.nvim_set_hl(0, "Cursor", { fg = "#151519", bg = "#ffffff" })
        
          vim.api.nvim_set_hl(0, "Comment", { fg = "#727983", italic = true })
          vim.api.nvim_set_hl(0, "Constant", { fg = "#d58ff5" })
          vim.api.nvim_set_hl(0, "String", { fg = "#bde764" })
          vim.api.nvim_set_hl(0, "Identifier", { fg = "#67cbe8" })
          vim.api.nvim_set_hl(0, "Function", { fg = "#e8bb5b" })
          vim.api.nvim_set_hl(0, "Statement", { fg = "#e68b3f" })
          vim.api.nvim_set_hl(0, "Keyword", { fg = "#e68b3f" })
          vim.api.nvim_set_hl(0, "Type", { fg = "#68ccec" })
          vim.api.nvim_set_hl(0, "Special", { fg = "#e89f52" })
          vim.api.nvim_set_hl(0, "Operator", { fg = "#dcaa58" })
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
