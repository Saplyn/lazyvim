return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "echasnovski/mini.icons",
  },
  opts = {
    window = {
      mappings = {
        ["<space>"] = "none",
        ["."] = "none",
        ["^"] = "set_root",
        ["t"] = "open",
        ["<tab>"] = "open_tabnew",
        ["<cr>"] = "open_tabnew",
      },
    },
    default_component_configs = {
      modified = {
        symbol = "",
      },
      git_status = {
        symbols = {
          -- Change type
          added = "",
          modified = "",
          deleted = "",
          renamed = "",
          -- Status type
          untracked = "",
          ignored = "",
          unstaged = "",
          staged = "",
          conflict = "󱈸",
        },
      },
    },
    filesystem = {
      components = {
        icon = function(config, node, _)
          local mini_icons = require("mini.icons")
          local icon = config.default or "*"
          local hl = "MiniIconsBlue"

          if node.type == "directory" then
            _, hl = mini_icons.get("directory", node.name)
            if node.loaded and not node:has_children() then
              icon = not node.empty_expanded and config.folder_empty or config.folder_empty_open
            elseif node:is_expanded() then
              icon = config.folder_open
            else
              icon, hl = mini_icons.get("directory", node.name)
            end
          else
            icon, hl = mini_icons.get(node.type, node.name)
          end

          return {
            text = icon,
            highlight = hl,
          }
        end,
      },
    },
  },
}
