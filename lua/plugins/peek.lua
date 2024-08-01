return {
  "toppair/peek.nvim",
  event = { "VeryLazy" },
  build = "deno task --quiet build:fast",
  keys = {
    {
      "<leader>cp",
      function()
        local peek = require("peek")
        if peek.is_open() then
          peek.close()
        else
          peek.open()
        end
      end,
      ft = { "markdown" },
      desc = "Preview Markdown (Peek)",
    },
  },
  opts = {
    theme = "dark",
  },
}
