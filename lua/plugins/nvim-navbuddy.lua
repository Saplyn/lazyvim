return {
  "SmiteshP/nvim-navbuddy",
  dependencies = {
    "neovim/nvim-lspconfig",
    "SmiteshP/nvim-navic",
    "MunifTanjim/nui.nvim",
    "numToStr/Comment.nvim", -- Optional
    "nvim-telescope/telescope.nvim", -- Optional
  },
  cmd = {
    "Navbuddy",
  },
  -- stylua: ignore
  keys = {
    { "<leader>;", function() require("nvim-navbuddy").open() end, desc = "Navigate Code Symbol" },
  },
  opts = {
    lsp = {
      auto_attach = true,
    },
  },
}
