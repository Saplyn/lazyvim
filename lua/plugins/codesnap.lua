return {
  "mistricky/codesnap.nvim",
  build = "make build_generator",
  cmd = {
    "CodeSnap",
    "CodeSnapSave",
    "CodeSnapHighlight",
    "CodeSnapSaveHighlight",
  },
  keys = {
    { "<leader>cp", "<cmd>CodeSnap<cr>", mode = "x", desc = "CodeSnap to clipboard" },
    { "<leader>cP", "<cmd>CodeSnapSave<cr>", mode = "x", desc = "CodeSnap to ~/Pictures" },
    { "<leader>ch", "<cmd>CodeSnapHighlight<cr>", mode = "x", desc = "CodeSnap & Hightlight to clipboard" },
    { "<leader>cH", "<cmd>CodeSnapSaveHighlight<cr>", mode = "x", desc = "CodeSnap & Hightlight to ~/Pictures" },
  },
  opts = {
    has_breadcrumbs = true,
    bg_padding = 0,
    watermark = "",
    has_line_number = true,
  },
}
