return {
  "justinhj/battery.nvim",

  dependencies = {
    "nvim-lua/plenary.nvim",
  },

  opts = {
    update_rate_seconds = 60,
    show_status_when_no_battery = false,
    show_plugged_icon = false,
    show_unplugged_icon = false,
    show_percent = true,
    vertical_icons = false,
  },
}
