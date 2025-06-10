return {
  {
    -- conform for formatting code
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        python = { "autopep8" },
      },
    },
  },
  {
    dir = "/home/centro/src/projects/centest.nvim",
    dev = true,
    config = function()
      require("centest").setup({ message = "Local plugin loaded!" })
    end,
  },
}
