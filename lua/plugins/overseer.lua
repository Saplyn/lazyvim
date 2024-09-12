local comp2310_tmpl = {
  name = "Run test case",
  params = {
    cmd = { default = "python3 ./test.py -t ", type = "string", order = 1 },
    cwd = { type = "string", optional = true, order = 4 },
    env = { type = "opaque", optional = true },
    metadata = { type = "opaque", optional = true },
    components = { type = "opaque", optional = true },
    strategy = { type = "opaque", optional = true },
    expand_cmd = {
      desc = "Run expandcmd() on command before execution",
      type = "boolean",
      default = true,
      optional = true,
      order = 3,
    },
  },
  builder = function(params)
    local cmd = params.expand_cmd and vim.fn.expandcmd(params.cmd) or params.cmd
    return {
      cmd = cmd,
      env = params.env,
      cwd = params.cwd,
      metadata = params.metadata,
      components = params.components,
      strategy = params.strategy,
    }
  end,
}

return {
  "stevearc/overseer.nvim",
  keys = {
    {
      "<leader>or",
      function()
        local overseer = require("overseer")
        local tasks = overseer.list_tasks({ recent_first = true })
        if vim.tbl_isempty(tasks) then
          vim.notify("No tasks found", vim.log.levels.WARN)
        else
          overseer.run_action(tasks[1], "restart")
        end
      end,
      desc = "Rerun last task",
    },
  },
  opts = function(_, opts)
    local overseer = require("overseer")
    -- overseer.register_template(comp2310_tmpl)
  end,
}
