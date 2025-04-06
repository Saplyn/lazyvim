return {
  "folke/snacks.nvim",
  opts = function(_, opts)
    local preset_keys = opts.dashboard.preset.keys
    local quit_entry = preset_keys[#preset_keys]

    local keys = {}
    vim.list_extend(keys, preset_keys, nil, #preset_keys - 1)

    -- stylua: ignore
    vim.list_extend(keys, {
      { action = 'ene | DBUI',                                                 desc = "Database",           icon = "󰆼 ", key = "D" },
      { action = function() LazyVim.lazygit({ cwd = LazyVim.root.git() }) end, desc = "Lazygit (Root Dir)", icon = "󰊢 ", key = "G" },
      quit_entry,
    })
    opts.dashboard.preset.keys = keys

    for _, button in ipairs(opts.dashboard.preset.keys) do
      button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
      button.key_format = "  %s"
    end
  end,
}
