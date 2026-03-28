return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shfmt",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ["*"] = {
          keys = {
            { "<c-k>", false, mode = "i" },
          },
        },
      },
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
