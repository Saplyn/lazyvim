return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local cmp = require("cmp")

    -- https://github.com/LazyVim/LazyVim/discussions/2221#discussioncomment-7900584
    opts.mapping = vim.tbl_deep_extend("force", opts.mapping, {
      ["<CR>"] = function(fallback)
        cmp.abort()
        fallback()
      end,
    })
  end,
}
