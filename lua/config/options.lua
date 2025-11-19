-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- make tab appear as 4 spaces
vim.opt.tabstop = 4
-- how much spaces (in characters) is used for indentations
vim.opt.shiftwidth = 4
-- keine Ahnung
vim.opt.softtabstop = 4
-- indentation is filled with spaces, not tabs
vim.opt.expandtab = true
-- make indentations according to syntax
vim.opt.smartindent = true

-- better colors
vim.opt.termguicolors = true

vim.opt.clipboard = "unnamed"

-- Copy would hang when using ssh
-- Following code fixes this issue
vim.o.clipboard = "unnamedplus"

-- local function paste()
--   return {
--     vim.fn.split(vim.fn.getreg(""), "\n"),
--     vim.fn.getregtype(""),
--   }
-- end
--
-- vim.g.clipboard = {
--   name = "OSC 52",
--   copy = {
--     ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
--     ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
--   },
--   paste = {
--     ["+"] = paste,
--     ["*"] = paste,
--   },
-- }
