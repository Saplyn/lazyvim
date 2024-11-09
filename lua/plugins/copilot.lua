local Snacks = require("snacks")
local copilot_exists = pcall(require, "copilot")

if copilot_exists then
  Snacks.toggle({
    name = "Copilot Completion",
    color = {
      enabled = "green",
      disabled = "orange",
    },
    get = function()
      return not require("copilot.client").is_disabled()
    end,
    set = function(state)
      if state then
        require("copilot.command").enable()
      else
        require("copilot.command").disable()
      end
    end,
  }):map("<leader>at")
end

return {
  "zbirenbaum/copilot.lua",
  config = function(_, opts)
    require("copilot").setup(opts)
    require("copilot.command").disable()
  end,
}
