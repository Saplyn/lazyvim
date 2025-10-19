return {
  "vuki656/package-info.nvim",
  dependencies = { "MunifTanjim/nui.nvim" },
  ft = "json",
  opts = {
    highlights = {
      up_to_date = { fg = "#0DB9D7" },
      outdated = { fg = "#d19a66" },
    },
    icons = {
      style = {
        up_to_date = "   ",
        outdated = "   ",
      },
    },
    package_manager = "npm",
  },
  config = function(_, opts)
    require("package-info").setup(opts)

    vim.cmd([[highlight PackageInfoUpToDateVersion guifg=]] .. opts.colors.up_to_date)
    vim.cmd([[highlight PackageInfoOutdatedVersion guifg=]] .. opts.colors.outdated)
  end,
}
