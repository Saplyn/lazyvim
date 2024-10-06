local animate = require("mini.animate")

return {
  "echasnovski/mini.animate",
  opts = {
    resize = {
      enable = false,
    },
    cursor = {
      timing = animate.gen_timing.linear({ duration = 100, unit = "total" }),
    },
    scroll = {
      timing = animate.gen_timing.exponential({ easing = "out", duration = 110, unit = "total" }),
    },
  },
}
