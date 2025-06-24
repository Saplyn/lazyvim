return {
  "RaafatTurki/hex.nvim",
  cmd = {
    "HexDump",
    "HexAssemble",
    "HexToggle",
  },
  keys = {
    { "<leader>ch", "<Cmd>HexToggle<CR>", mode = { "n" }, desc = "Toggle Hex Display" },
  },
  opts = {},
}
