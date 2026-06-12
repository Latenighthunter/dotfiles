return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    spec = {
      { "<leader>c", group = "Code Action" },
      { "<leader>e", group = "File Explorer" },
      { "<leader>f", group = "Fuzzy Finder" },
      { "<leader>h", group = "Search Highlight"},
      { "<leader>l", group = "Aerial Symbols" },
      { "<leader>r", group = "Restart LSP" },
      { "<leader>t", group = "Terminal" },
      { "<leader>x", group = "Trouble" },
      { "<leader>g", group = "Git Signs"},
      { "<leader>o", group = "ToggleTerminal"},
      { "<leader>p", group = "Plugins"}, 
    },
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
