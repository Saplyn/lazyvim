return {
  "mrcjkb/rustaceanvim",
  lazy = false,
  opts = {
    server = {
      on_attach = function(_, bufnr)
        vim.keymap.set("n", "<leader>cR", function()
          vim.cmd.RustLsp("codeAction")
        end, { desc = "Code Action", buffer = bufnr })

        vim.keymap.set("n", "<leader>dr", function()
          vim.cmd.RustLsp("debuggables")
        end, { desc = "Rust Debuggables", buffer = bufnr })

        vim.keymap.set("n", "<leader>xe", function()
          vim.cmd.RustLsp("explainError")
        end, { desc = "Explain Error", buffer = bufnr })

        vim.keymap.set("n", "<leader>xr", function()
          vim.cmd.RustLsp({ "renderDiagnostic", "current" })
        end, { desc = "Render Diagnostic (Current)", buffer = bufnr })

        vim.keymap.set("n", "<leader>xR", function()
          vim.cmd.RustLsp({ "renderDiagnostic", "cycle" })
        end, { desc = "Render Diagnostic (Cycle)", buffer = bufnr })

        vim.keymap.set("n", "<leader>cp", function()
          vim.cmd.RustLsp("openCargo")
        end, { desc = "Open Project Cargo.toml", buffer = bufnr })
      end,
    },
  },
}
