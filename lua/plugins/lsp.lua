return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shfmt",
        "gopls",
        "pyright",
        "typescript-language-server",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "go",
        "gomod",
        "gosum",
        "gowork",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        -- remove inline diagnostics
        -- view inline diagnostics w/ <leader>\\
        virtual_text = false,
        update_in_insert = false,
        underline = true,
      },
      inlay_hints = {
        enabled = false,
      },
    },
  },
}
