-- toggleterm provides an integrated terminal inside Neovim
return {
    "akinsho/toggleterm.nvim",
    version = "*",
    lazy = true,
    cmd = {
        "ToggleTerm",
        "TermExec",
    },
    opts = {
        -- you can customize settings here
        size = 20,
        open_mapping = [[<c-\>]],
        direction = "float", -- "vertical" | "horizontal" | "tab" | "float"
        float_opts = {
            border = "rounded",
        },
    },
    keys = {
        { "<leader>tf", "<cmd>ToggleTerm<cr>", desc = "Float Terminal" },
      { "<leader>th", "<cmd>ToggleTerm direction=horizontal<cr>", desc = "Horizontal Terminal" },
      { "<leader>tv", "<cmd>ToggleTerm direction=vertical<cr>", desc = "Vertical Terminal" },
        { "<leader>tt", "<cmd>ToggleTerm<cr>", desc = "Execute Terminal" }
    },

}
