local map = vim.keymap.set

-- jk to exit insert mode
map("i", "jk", "<Esc>", { noremap = true, silent = true })


-- normal split navigation
map("n", "<C-h>", "<cmd>wincmd h<CR>", { silent = true })
map("n", "<C-j>", "<cmd>wincmd j<CR>", { silent = true })
map("n", "<C-k>", "<cmd>wincmd k<CR>", { silent = true })
map("n", "<C-l>", "<cmd>wincmd l<CR>", { silent = true })

map("n", "<S-h>", "<cmd>bprevious<CR>", { silent = true })
map("n", "<S-l>", "<cmd>bnext<CR>", { silent = true })

-- Resize splits
map("n", "<leader><Up>", ":resize +2<CR>", { silent = true })
map("n", "<leader><Down>", ":resize -2<CR>", { silent = true })
map("n", "<leader><Left>", ":vertical resize -2<CR>", { silent = true })
map("n", "<leader><Right>", ":vertical resize +2<CR>", { silent = true })


map("n", "<leader>k", ":resize +2<CR>", { silent = true })
map("n", "<leader>j", ":resize -2<CR>", { silent = true })
map("n", "<leader>h", ":vertical resize -2<CR>", { silent = true })
map("n", "<leader>l", ":vertical resize +2<CR>", { silent = true })
