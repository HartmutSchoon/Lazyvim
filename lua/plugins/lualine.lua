if true then
  return {}
else
  return {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        theme = "catpuccin",
        -- theme = "gruvbox-material",
      },
    },
  }
end
