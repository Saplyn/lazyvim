return {
  "akinsho/git-conflict.nvim",
  version = "*",
  -- stylua: ignore
  keys = {
    { "<leader>m", desc = "merge"},
    { "<leader>mo", function() vim.cmd("GitConflictChooseOurs") end,   desc = "Accept Ours" },
    { "<leader>mt", function() vim.cmd("GitConflictChooseTheirs") end, desc = "Accept Theirs" },
    { "<leader>mb", function() vim.cmd("GitConflictChooseBoth") end,   desc = "Accept Both" },
    { "<leader>mx", function() vim.cmd("GitConflictChooseNone") end,   desc = "Accept None" },
  },
  cmd = {
    "GitConflictChooseBase",
    "GitConflictChooseBoth",
    "GitConflictChooseNone",
    "GitConflictChooseOurs",
    "GitConflictChooseTheirs",
    "GitConflictListQf",
    "GitConflictNextConflict",
    "GitConflictPrevConflict",
    "GitConflictRefresh",
  },
  opts = {
    default_mappings = false,
  },
}
