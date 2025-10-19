return {
  "nvim-mini/mini.icons",
  opts = {
    file = {
      ["package-lock.json"] = { glyph = "", hl = "MiniIconsGreen" },
      ["tailwind.config.js"] = { glyph = "󱏿", hl = "MiniIconsAzure" },
      ["tailwind.config.ts"] = { glyph = "󱏿", hl = "MiniIconsAzure" },
      ["Cargo.toml"] = { glyph = "󰏗", hl = "MiniIconsOrange" },
      ["Cargo.lock"] = { glyph = "󰏗", hl = "MiniIconsOrange" },
      ["tauri.conf.json"] = { glyph = "", hl = "MiniIconsOrange" },
      ["vite.config.ts"] = { glyph = "", hl = "MiniIconsYellow" },
    },
    directory = {
      ["target"] = { glyph = "󱧼", hl = "MiniIconsOrange" },
      ["Assets"] = { glyph = "󰴉", hl = "MiniIconsPurple" },
      ["src-tauri"] = { glyph = "󰴉", hl = "MiniIconsPurple" },
    },
    filetype = {
      ["dafny"] = { glyph = "" },
      ["admonish"] = { glyph = "", hl = "MiniIconsPurple" },
      ["pest"] = { glyph = "󰰚", hl = "MiniIconsBlue" },
    },
    extension = {
      ["h"] = { glyph = "󰜕" },
      ["hpp"] = { glyph = "󰜖" },
      ["pdf"] = { glyph = "" },
      ["bak"] = { glyph = "󰁯" },
      ["pest"] = { glyph = "󰰚", hl = "MiniIconsBlue" },
    },
    default = {
      directory = { hl = "MiniIconsBlue" },
    },
  },
}
