return {
  {
    "github/copilot.vim",
    lazy = false,
    init = function()
      vim.g.copilot_no_tab_map = true

      -- Accessibility: use <S-Tab> to accept Copilot only when a suggestion is
      -- visible. When Copilot is not showing a suggestion, this falls back to
      -- the editor's normal <S-Tab> behavior instead of overriding it globally.
      --
      -- In this setup, the normal <S-Tab> behavior comes from blink.cmp and is:
      -- - snippet backward jump when a snippet jump target is active
      -- - otherwise the terminal/editor's plain <S-Tab> behavior
      --
      -- This preserves snippet navigation while freeing <C-l> for a right-hand
      -- "jump to end of line" insert-mode motion.
      vim.keymap.set("i", "<S-Tab>", function()
        local suggestion = vim.fn["copilot#GetDisplayedSuggestion"]()
        if suggestion.text ~= "" then
          return vim.fn["copilot#Accept"]("")
        end
        return "<S-Tab>"
      end, {
        expr = true,
        replace_keycodes = false,
        desc = "Copilot accept or Shift-Tab fallback",
      })
      vim.keymap.set("i", "<C-j>", "<Plug>(copilot-accept-word)", {
        remap = true,
        desc = "Copilot accept word",
      })
      vim.keymap.set("i", "<C-k>", "<Plug>(copilot-accept-line)", {
        remap = true,
        desc = "Copilot accept line",
      })
      vim.keymap.set("i", "<C-]>", "<Plug>(copilot-dismiss)", {
        remap = true,
        desc = "Copilot dismiss",
      })
    end,
  },
  {
    -- conform for formatting code
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        python = { "ruff_format" },
      },
    },
  },
  {
    "nickjvandyke/opencode.nvim",
    version = "*", -- Latest stable release
    keys = {
      {
        "<leader>aa",
        function()
          require("opencode").ask("@this: ", { submit = true })
        end,
        mode = { "n", "x" },
        desc = "Ask opencode...",
      },
      {
        "<leader>as",
        function()
          require("opencode").select()
        end,
        mode = { "n", "x" },
        desc = "Execute opencode action...",
      },
      {
        "<leader>at",
        function()
          require("opencode").toggle()
        end,
        mode = { "n", "t" },
        desc = "Toggle opencode",
      },
      {
        "<leader>ar",
        function()
          return require("opencode").operator("@this ")
        end,
        mode = { "n", "x" },
        expr = true,
        desc = "Add range to opencode",
      },
      {
        "<leader>aR",
        function()
          return require("opencode").operator("@this ") .. "_"
        end,
        mode = "n",
        expr = true,
        desc = "Add line to opencode",
      },
      {
        "<S-C-u>",
        function()
          require("opencode").command("session.half.page.up")
        end,
        mode = "n",
        desc = "Scroll opencode up",
      },
      {
        "<S-C-d>",
        function()
          require("opencode").command("session.half.page.down")
        end,
        mode = "n",
        desc = "Scroll opencode down",
      },
    },
    dependencies = {
      {
        -- `snacks.nvim` integration is recommended, but optional
        ---@module "snacks" <- Loads `snacks.nvim` types for configuration intellisense
        "folke/snacks.nvim",
        optional = true,
        opts = {
          input = {}, -- Enhances `ask()`
          picker = { -- Enhances `select()`
            actions = {
              opencode_send = function(...)
                return require("opencode").snacks_picker_send(...)
              end,
            },
            win = {
              input = {
                keys = {
                  ["<a-a>"] = { "opencode_send", mode = { "n", "i" } },
                },
              },
            },
          },
        },
      },
    },
    config = function()
      ---@type opencode.Opts
      vim.g.opencode_opts = {
        -- Your configuration, if any; goto definition on the type or field for details
      }

      vim.o.autoread = true -- Required for `opts.events.reload`
    end,
  },
}
