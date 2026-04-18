return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        -- This specifically targets the Explorer source
        explorer = {
          hidden = true,   -- Shows dotfiles (.env, .gitignore, etc.)
          ignored = true,  -- Shows git-ignored files (node_modules, dist, etc.)
        },
      },
    },
  },
}

