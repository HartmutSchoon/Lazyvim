return {
  -- add colorschemes
  { "ellisonleao/gruvbox.nvim" },
  { "luisiacc/gruvbox-baby" },
  { "rebelot/kanagawa.nvim" },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { "shaunsingh/nord.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = { "nord" },
    },
  },
}
