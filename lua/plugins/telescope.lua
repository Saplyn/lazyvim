return {
  "nvim-telescope/telescope.nvim",
  opts = function()
    local actions = require("telescope.actions")

    return {
      defaults = {
        mappings = {
          i = {
            ["<M-CR>"] = actions.select_tab,
            ["<CR>"] = actions.select_default,
          },
        },
      },
    }
  end,
}
