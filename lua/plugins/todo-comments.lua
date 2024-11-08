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
      REF = { icon = " ", color = "test", signs = true },
      MARK = { icon = "󰃀 ", color = "test", signs = true },
      NOTE = { icon = " ", signs = true },
    },
  },
}
