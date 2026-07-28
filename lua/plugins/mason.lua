if true then
  return {}
else
  return {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shfmt",
        "debugpy",
        "codelldb",
      },
    },
  }
end
