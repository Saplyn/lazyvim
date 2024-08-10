local godbolt_ft = {
  "c",
  "cpp",
  "rust",
}

local function get_rustc_ver()
  local handle = io.popen("rustc --version")
  local result = handle:read("*a")
  handle:close()

  -- Extract the version number using pattern matching
  local version = result:match("(%d+%.%d+%.%d+)")

  -- Remove the dots
  return "r" .. version:gsub("%.", "")
end

return {
  "p00f/godbolt.nvim",
  cmd = {
    "Godbolt",
    "GodboltCompiler",
  },
  keys = {
    {
      "<leader>cg",
      function()
        vim.cmd("Godbolt")
      end,
      desc = "Godbolt Assembly Display",
      ft = godbolt_ft,
    },
    {
      "<leader>cG",
      function()
        vim.cmd("GodboltCompiler telescope")
      end,
      desc = "Godbolt Assembly Display (Custom Compiler)",
      ft = godbolt_ft,
    },
  },
  opts = {
    languages = {
      c = { compiler = "cg114" },
      cpp = { compiler = "g114" },
      rust = { compiler = get_rustc_ver() },
    },
  },
}
