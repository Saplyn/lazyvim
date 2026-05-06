return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "stevearc/overseer.nvim" },
  opts = {
    options = {
      component_separators = { left = "│", right = "│" },
      section_separators = { left = "", right = "" },
    },
    sections = {
      lualine_y = {
        "overseer",
        "lsp_status",
        function()
          return require("battery").get_status_line()
        end,
      },
      lualine_z = { "location" },
    },
  },
}
