return {
  -- Automatically install & register DAP adapters with nvim-dap
  -- {
  --   "jay-babu/mason-nvim-dap.nvim",
  --   dependencies = { "mason-org/mason.nvim", "mfussenegger/nvim-dap" },
  --   opts = {
  --     automatic_installation = true,
  --     handlers = {},
  --   },
  -- },

  -- Python DAP integration
  -- {
  --   "mfussenegger/nvim-dap-python",
  --   ft = "python",
  --   dependencies = { "mfussenegger/nvim-dap" },
  --   config = function()
  --     local debugpy_path = vim.fn.stdpath("data") .. "/mason/packages/debugpy/venv/bin/python"
  --     require("dap-python").setup(debugpy_path)
  --   end,
  -- },

  -- Virtual text for inline variable evaluations during debug
  {
    "theHamsta/nvim-dap-virtual-text",
    opts = {
      enabled = true,
    },
  },
}
