return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "stevearc/overseer.nvim" },
  opts = {
    options = {
      component_separators = { left = "│", right = "│" },
      section_separators = { left = "", right = "" },
    },
    sections = {
      lualine_y = { "overseer" },
      lualine_z = { "location" },
    },
  },
}
