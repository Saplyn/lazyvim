return {
  "zbirenbaum/copilot.lua",
  keys = {
    {
      "<leader>at",
      function()
        if require("copilot.client").is_disabled() then
          require("copilot.command").enable()
        else
          require("copilot.command").disable()
        end
      end,
      desc = "Toggle Copilot",
    },
  },
  config = function(_, opts)
    require("copilot").setup(opts)

    require("copilot.command").disable()
  end,
}
