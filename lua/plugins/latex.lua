return {
  "ryleelyman/latex.nvim",
  ft = { "markdown", "latex" },
  opts = {
    conceals = {
      add = {
        ["\\{"] = "{",
        ["\\}"] = "}",
        ["\\sqrt"] = "√",
        ["\\,"] = " ",
        ["\\;"] = " ",
      },
    },
  },
}
