return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      mappings = {
        ["<space>"] = "none",
        ["."] = "none",
        ["^"] = "set_root",
        ["t"] = "open",
        ["<tab>"] = "open_tabnew",
        ["<cr>"] = "open_tabnew",
      },
    },
    default_component_configs = {
      modified = {
        symbol = "",
      },
      git_status = {
        symbols = {
          -- Change type
          added = "",
          modified = "",
          deleted = "",
          renamed = "",
          -- Status type
          untracked = "",
          ignored = "",
          unstaged = "",
          staged = "",
          conflict = "󱈸",
        },
      },
    },
  },
}
