return {
  "windwp/nvim-autopairs",
  event = { "InsertEnter" },
  dependencies = {
    "hrsh7th/nvim-cmp",
  },
  config = function()
    local npairs = require("nvim-autopairs")
    local Rule = require("nvim-autopairs.rule")

    npairs.setup({})

    npairs.add_rules({
      Rule("<", ">")
    })

    -- toggle autopairs
    vim.keymap.set("n", "<leader>ua", function()
      if vim.g.autopairs_enabled then
        npairs.disable()
        vim.g.autopairs_enabled = false
      else
        npairs.enable()
        vim.g.autopairs_enabled = true
      end
    end, { desc = "Toggle Autopairs" })

    vim.g.autopairs_enabled = true
  end
}
