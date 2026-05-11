return {
  "lewis6991/gitsigns.nvim",
  opts = function(_, opts)
    local default_on_attach = opts.on_attach
    opts.on_attach = function(bufnr)
      -- 1. Run the default LazyVim mappings first
      if default_on_attach then
        default_on_attach(bufnr)
      end

      -- 2. Force-override the floating version on top of the default
      local gs = package.loaded.gitsigns
      vim.keymap.set("n", "<leader>ghp", gs.preview_hunk, { 
        buffer = bufnr, 
        desc = "Preview Hunk (Floating)" 
      })
      vim.keymap.set("n", "<leader>gbt", gs.toggle_current_line_blame, {
        buffer = bufnr,
        desc = "Toggle current line blame"
      })
    end
  end,
}

