return {
  -- add colorschemes
  { "ellisonleao/gruvbox.nvim" },
  { "luisiacc/gruvbox-baby" },
  { "rebelot/kanagawa.nvim" },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      integrations = {
        lualine = true,
      },
    },
  },
  { "shaunsingh/nord.nvim" },

  -- Configure LazyVim to load catppuccin-macchiato
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-macchiato",
    },
  },
}
