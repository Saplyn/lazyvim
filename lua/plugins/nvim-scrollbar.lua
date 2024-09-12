return {
  "petertriho/nvim-scrollbar",
  dependencies = {
    "kevinhwang91/nvim-hlslens",
  },
  opts = {
    marks = {
      Cursor = { text = "░" },
      Search = { text = { "─", "═" } },
      Error = { text = { "─", "═" } },
      Warn = { text = { "─", "═" } },
      Info = { text = { "─", "═" } },
      Hint = { text = { "─", "═" } },
      Misc = { text = { "─", "═" } },
    },
    handlers = {
      cursor = false,
      search = true,
    },
  },
}
