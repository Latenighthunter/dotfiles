vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- window management
keymap.set("n", "|", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "\\", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "=", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>=", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>n", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>q", "<cmd>tabclose<CR>", { desc = "Close CurrentWindow" }) -- close current tab
keymap.set("n", "<leader>Q", "<cmd>confirm qall<CR>", { desc = "Quit Nvim" })
keymap.set("n", "]t", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "[t", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab

-- Save file
vim.keymap.set("n", "<leader>w", "<cmd>w<cr>", { desc = "Save file" })


-- Plugins
vim.keymap.set("n", "<Leader>pi", function()
  require("lazy").install()
end, { desc = "Plugins Install" })
vim.keymap.set("n", "<Leader>ps", function()
  require("lazy").home()
end, { desc = "Plugins Status" })
vim.keymap.set("n", "<Leader>pS", function()
  require("lazy").sync()
end, { desc = "Plugins Sync" })
vim.keymap.set("n", "<Leader>pu", function()
  require("lazy").check()
end, { desc = "Plugins Check Updates" })
vim.keymap.set("n", "<Leader>pU", function()
  require("lazy").update()
end, { desc = "Plugins Update" })
vim.keymap.set("n", "<Leader>pa", function()
  require("astrocore").update_packages()
end, { desc = "Update Lazy and Mason" })
