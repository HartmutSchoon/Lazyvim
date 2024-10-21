-- Keymap are automatically loaded on the VeryLazy event
-- Default keymap that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymap.lua
-- Add any additional keymap here

local map = LazyVim.safe_keymap_set

-- Outline
map("n", "<leader>o", "<cmd>Outline<cr>", { desc = "Toggle Outline" })

-- Resize windows
map("n", "<C-Up>", '<cmd>lua require("smart-splits").resize_up()<cr>', { desc = "Resize up" })
map("n", "<C-Down>", '<cmd>lua require("smart-splits").resize_down()<cr>', { desc = "Resize down" })
map("n", "<C-Left>", '<cmd>lua require("smart-splits").resize_left()<cr>', { desc = "Resize left" })
map("n", "<C-Right>", '<cmd>lua require("smart-splits").resize_right()<cr>', { desc = "Resize right" })

-- Pilot
map("n", "<leader>aE", "<cmd>Copilot enable<cr>", { desc = "Copilot enable" })
map("n", "<leader>aD", "<cmd>Copilot disable<cr>", { desc = "Copilot disable" })

-- ToggleTerm
map("n", "<leader>t", "", { desc = "+terminal" })
map("n", "<leader>th", "<cmd>ToggleTerm direction=horizontal<cr>", { desc = "Horizontal terminal" })
map("n", "<leader>tv", "<cmd>ToggleTerm direction=vertical<cr>", { desc = "Vertical terminal" })
map("n", "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", { desc = "Floating terminal" })

-- Python
map("n", "<leader>p", "", { desc = "+python" })
map("n", "<leader>pr", "<cmd>TermExec cmd='poetry run default_entry'<cr>", { desc = "Run file" })
-- map("n", "<leader>th", "<cmd>ToggleTerm direction=horizontal<cr>", { desc = "Horizontal terminal" })

-- Rust
map("n", "<leader>r", "", { desc = "+rust" })
map("n", "<leader>rr", "<cmd>RustLsp runnables<cr>", { desc = "Rust runables" })
map("n", "<leader>rd", "<cmd>RustLsp debuggables<cr>", { desc = "Rust debuggables" })
map("n", "<leader>re", "<cmd>RustLsp expandMacro<cr>", { desc = "Expand Macro" })

-- Render Markdown and compile Tex
map("n", "<leader>T", "", { desc = "+text" })
map("n", "<leader>Tl", "<cmd>VimtexCompile<cr>", { desc = "Latex compile" })
map("n", "<leader>Tm", "<cmd>MarkdownPreview<cr>", { desc = "Markdown preview" })

-- Telescope undo
map("n", "<leader>U", "<cmd>Telescope undo<cr>", { desc = "Undo history" })
