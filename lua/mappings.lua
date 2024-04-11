require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<C-w>", "<C-w>q")
map("n", "<leader>tt", function()
  require("base46").toggle_transparency()
end, { desc = "Toggle transparency" })
map("i", "<C-f>", "copilot#Accept('<CR>')", {
  noremap = true,
  silent = true,
  expr = true,
  replace_keycodes = false,
})
