return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shfmt",
        "autopep8",
        "pyright",
        "typescript-language-server",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {},
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
