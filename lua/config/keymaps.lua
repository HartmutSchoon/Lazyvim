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
map("n", "<leader>pr", "<cmd>TermExec cmd='uv run current_project'<cr>", { desc = "Run current project" })
map("n", "<leader>pf", "<cmd>TermExec cmd='uv run python %'<cr>", { desc = "Run file" })

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

--  Register keymap with which-key
local wk = require("which-key")
wk.add({
  --DAP
  {
    "<F5>",
    function()
      require("dap").continue()
    end,
    desc = "Debugger: Run",
  },
  {
    "<F17>",
    function()
      require("dap").terminate()
    end,
    desc = "Debugger: Stop",
  },

  {
    "<F21>", -- Shift+F9
    function()
      require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))
    end,
    desc = "Debugger: Conditional Breakpoint",
  },
  {
    "<F29>",
    function()
      require("dap").restart_frame()
    end,
    desc = "Debugger: Restart",
  }, -- Control+F5
  {
    "<F6>",
    function()
      require("dap").pause()
    end,
    desc = "Debugger: Pause",
  },
  {
    "<F9>",
    function()
      require("dap").toggle_breakpoint()
    end,
    desc = "Debugger: Toggle Breakpoint",
  },
  {
    "<F10>",
    function()
      require("dap").step_over()
    end,
    desc = "Debugger: Step Over",
  },
  {
    "<F11>",
    function()
      require("dap").step_into()
    end,
    desc = "Debugger: Step Into",
  },
  {
    "<F23>",
    function()
      require("dap").step_out()
    end,
    desc = "Debugger: Step Out",
  }, -- Shift+F11

  { "<leader>du", '<cmd>lua require("dapui").toggle() <cr>', desc = "Toggle UI" },
  {
    "<leader>dh",
    function()
      require("dap.ui.widgets").hover()
    end,
    desc = "Debugger Hover",
  },
  {
    "<leader>dE",
    function()
      require("dapui").eval()
    end,
    desc = "Evaluate Input",
  },
  {
    "<leader>db",
    function()
      require("dap").toggle_breakpoint()
    end,
    desc = "Toggle Breakpoint (F9)",
  },
  {
    "<leader>dB",
    function()
      require("dap").clear_breakpoints()
    end,
    desc = "Clear Breakpoints",
  },
  {
    "<leader>dc",
    function()
      require("dap").continue()
    end,
    desc = "Start/Continue (F5)",
  },
  {
    "<leader>dC",
    function()
      require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))
    end,
    desc = "Conditional Breakpoint (S-F9)",
  },
  {
    "<leader>di",
    function()
      require("dap").step_into()
    end,
    desc = "Step Into (F11)",
  },
  {
    "<leader>do",
    function()
      require("dap").step_over()
    end,
    desc = "Step Over (F10)",
  },
  {
    "<leader>dO",
    function()
      require("dap").step_out()
    end,
    desc = "Step Out (S-F11)",
  },
  {
    "<leader>dq",
    function()
      require("dap").close()
    end,
    desc = "Close Session",
  },
  {
    "<leader>dQ",
    function()
      require("dap").terminate()
    end,
    desc = "Terminate Session (S-F5)",
  },
  {
    "<leader>dp",
    function()
      require("dap").pause()
    end,
    desc = "Pause (F6)",
  },
  {
    "<leader>dr",
    function()
      require("dap").restart_frame()
    end,
    desc = "Restart (C-F5)",
  },
  {
    "<leader>dR",
    function()
      require("dap").repl.toggle()
    end,
    desc = "Toggle REPL",
  },
  {
    "<leader>ds",
    function()
      require("dap").run_to_cursor()
    end,
    desc = "Run To Cursor",
  },
})
