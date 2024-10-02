return {
  "nvimdev/dashboard-nvim",
  opts = function(_, opts)
    local quit_entry = opts.config.center[#opts.config.center]

    local center = {}
    vim.list_extend(center, opts.config.center, nil, #opts.config.center - 1)

    -- stylua: ignore
    vim.list_extend(center, {
      { action = 'ene | DBUI',                                                 desc = " Database",           icon = "󰆼 ", key = "D" },
      { action = function() LazyVim.lazygit({ cwd = LazyVim.root.git() }) end, desc = " Lazygit (Root Dir)", icon = "󰊢 ", key = "G" },
      quit_entry,
    })
    opts.config.center = center

    for _, button in ipairs(opts.config.center) do
      button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
      button.key_format = "  %s"
    end
  end,
}
