return {
  "nvim-telescope/telescope.nvim",
  opts = function()
    local actions = require("telescope.actions")

    return {
      defaults = {
        mappings = {
          i = {
            ["<CR>"] = actions.select_tab,
            ["<M-CR>"] = actions.select_default,
          },
        },
      },
    }
  end,
}
