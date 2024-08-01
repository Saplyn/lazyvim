return {
  "folke/todo-comments.nvim",
  opts = {
    signs = false,
    keywords = {
      FIX = { signs = true },
      WARN = { icon = "󱇎 ", signs = true },
      TODO = { icon = "󱅫 ", color = "info", signs = true },
      DONE = { icon = "󱇥 ", color = "info" },
      LYN = { icon = "󰄛 ", color = "hint", signs = true },
      NOTE = { icon = " ", signs = true },
    },
  },
}
