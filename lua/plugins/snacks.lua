return {
  "folke/snacks.nvim",
  opts = function(_, opts)
    -- LYN: Dashboard
    local dashboard_preset_keys = opts.dashboard.preset.keys
    local dashboard_quit_entry = dashboard_preset_keys[#dashboard_preset_keys]

    local dashboard_keys = {}
    vim.list_extend(dashboard_keys, dashboard_preset_keys, nil, #dashboard_preset_keys - 1)

    -- stylua: ignore
    vim.list_extend(dashboard_keys, {
      { action = '<cmd>ene | DBUI<cr>',                                        desc = "Database",           icon = "󰆼 ", key = "D" },
      { action = function() LazyVim.lazygit({ cwd = LazyVim.root.git() }) end, desc = "Lazygit (Root Dir)", icon = "󰊢 ", key = "G" },
      dashboard_quit_entry,
    })
    opts.dashboard.preset.keys = dashboard_keys

    for _, button in ipairs(opts.dashboard.preset.keys) do
      button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
      button.key_format = "  %s"
    end

    -- LYN: Explorer
    opts.picker = {
      sources = {
        explorer = {
          win = {
            list = {
              keys = {
                ["t"] = "confirm",
                ["<CR>"] = "tab",
              },
            },
          },
          icons = {
            git = {
              commit = "󰜘 ",
              staged = "",
              added = "",
              deleted = "",
              ignored = "󰈉",
              modified = "󰄯",
              renamed = "",
              unmerged = "",
              untracked = "",
            },
          },
        },
      },
    }
  end,
}
