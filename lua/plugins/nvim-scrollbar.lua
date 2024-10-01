return {
  "petertriho/nvim-scrollbar",
  dependencies = {
    "kevinhwang91/nvim-hlslens",
  },
  opts = {
    hide_if_all_visible = true,
    marks = {
      Cursor = { text = "░" },
      Search = { text = { "─", "═" }, color = "#FF966C" },
      Error = { text = { "─", "═" } },
      Warn = { text = { "─", "═" } },
      Info = { text = { "─", "═" } },
      Hint = { text = { "─", "═" } },
      Misc = { text = { "─", "═" } },
    },
    handlers = {
      search = true,
    },
  },
}
