-- save and quit
vim.keymap.set("n", "<C-s>", vim.cmd.w)
vim.keymap.set("n", "<C-q>", "<cmd>wqall!<CR>")

-- file explorer
-- vim.keymap.set("n", "<C-e>", ":Explore<enter>")

-- buffers
vim.keymap.set("n", "tk", ":bnext<enter>")
vim.keymap.set("n", "tj", ":bprev<enter>")
vim.keymap.set("n", "th", ":bfirst<enter>")
vim.keymap.set("n", "tl", ":blast<enter>")
vim.keymap.set("n", "td", ":bdelete<enter>")

-- screen
vim.keymap.set("n", "ss", ":split<CR>")
vim.keymap.set("n", "sv", ":vsplit<CR>")
vim.keymap.set("n", "<space>j", "<C-w>w")

vim.keymap.set("n", "<C-w><left>", "<C-w><")
vim.keymap.set("n", "<C-w><right>", "<C-w>>")
vim.keymap.set("n", "<C-w><up>", "<C-w>+")
vim.keymap.set("n", "<C-w><down>", "<C-w>-")

-- select all
vim.keymap.set("n", "<C-a>", "gg<S-v>G")

-- move cursor line
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- yank
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+y")
-- paste
vim.keymap.set("x", "<leader>p", "\"_dP")

-- search regex
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- source
vim.keymap.set("n", "<C-r>", function()
  vim.cmd("so %")
end)

-- diagnose
vim.keymap.set('n', '<leader>dg', '<cmd>lua vim.diagnostic.open_float()<CR>')
