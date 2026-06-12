return {
  'stevearc/aerial.nvim',
  opts = {},
  -- Optional dependencies
  dependencies = {
     "nvim-treesitter/nvim-treesitter",
     "nvim-tree/nvim-web-devicons"
  }, 
  config = function()
   require("aerial").setup({
      filter_kind = nil,
      backends = { "treesitter", "lsp" },

      on_attach = function(bufnr)
        -- Symbol navigation
        vim.keymap.set("n", "]y", "<cmd>AerialNext<CR>", { buffer = bufnr, desc = "Next Symbol" })
        vim.keymap.set("n", "[y", "<cmd>AerialPrev<CR>", { buffer = bufnr, desc = "Previous Symbol" })

        -- Upwards navigation (parent scopes)
        vim.keymap.set("n", "]Y", "<cmd>AerialNextUp<CR>", { buffer = bufnr, desc = "Next Symbol Upwards" })
        vim.keymap.set("n", "[Y", "<cmd>AerialPrevUp<CR>", { buffer = bufnr, desc = "Previous Symbol Upwards" })
      end,
    })

    -- Toggle outline
    vim.keymap.set("n", "<leader>lS", "<cmd>AerialToggle!<CR>", { desc = "Symbols Outline" })
  end, 
}
