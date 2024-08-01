return {
  "levouh/tint.nvim",
  keys = {
    {
      "<leader>t",
      function()
        require("tint").toggle()
      end,
      desc = "Toggle Window Tint",
    },
  },
  opts = {
    tint = -70,
  },
  config = function(_, opts)
    local tint = require("tint")
    tint.setup(opts)
    tint.disable()
  end,
}
