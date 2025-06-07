return {
  "MeanderingProgrammer/render-markdown.nvim",
  opts = {
    code = {
      width = "full",
    },
    win_options = {
      conceallevel = {
        default = 0,
        rendered = 1,
      },
    },
    latex = {
      enabled = false,
    },
    checkbox = {
      enabled = true,
      custom = {
        doing = { raw = "[-]", rendered = "󰛲 ", highlight = "RenderMarkdownTodo", scope_highlight = nil },
        declined = { raw = "[#]", rendered = "󰅘 ", highlight = "RenderMarkdownHtmlComment", scope_highlight = nil },
      },
    },
  },
}
