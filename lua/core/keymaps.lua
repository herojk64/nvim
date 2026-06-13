local map = vim.keymap.set

-- jk to exit insert mode
map("i", "jk", "<Esc>", { noremap = true, silent = true })

-- normal split navigation
map("n", "<C-h>", "<cmd>wincmd h<CR>", { silent = true })
map("n", "<C-j>", "<cmd>wincmd j<CR>", { silent = true })
map("n", "<C-k>", "<cmd>wincmd k<CR>", { silent = true })
map("n", "<C-l>", "<cmd>wincmd l<CR>", { silent = true })

-- buffer navigation
map("n", "<S-h>", "<cmd>bprevious<CR>", { silent = true })
map("n", "<S-l>", "<cmd>bnext<CR>", { silent = true })
map("n", "<leader>bd", "<cmd>bdelete<CR>", { silent = true, desc = "Delete buffer" })

-- Resize splits
map("n", "<leader><Up>", ":resize +2<CR>", { silent = true })
map("n", "<leader><Down>", ":resize -2<CR>", { silent = true })
map("n", "<leader><Left>", ":vertical resize -2<CR>", { silent = true })
map("n", "<leader><Right>", ":vertical resize +2<CR>", { silent = true })

map("n", "<leader>k", ":resize +2<CR>", { silent = true })
map("n", "<leader>j", ":resize -2<CR>", { silent = true })
map("n", "<leader>h", ":vertical resize -2<CR>", { silent = true })
map("n", "<leader>l", ":vertical resize +2<CR>", { silent = true })

-- Keep cursor centered when searching
map("n", "n", "nzzzv", { silent = true })
map("n", "N", "Nzzzv", { silent = true })

-- Better paste (don't yank on paste)
map("v", "p", '"_dP', { silent = true })

-- New splits
map("n", "<leader>sv", "<cmd>vsplit<CR>", { silent = true, desc = "Vertical split" })
map("n", "<leader>sh", "<cmd>split<CR>", { silent = true, desc = "Horizontal split" })

-- Indent and stay in visual mode
map("v", "<", "<gv", { silent = true })
map("v", ">", ">gv", { silent = true })

for i = 1, 9 do
	map("n", "<C-" .. i .. ">", "<cmd>" .. i .. "ToggleTerm<CR>", { silent = true, desc = "Terminal " .. i })
end
map("n", "<C-0>", "<cmd>10ToggleTerm<CR>", { silent = true, desc = "Terminal 10" })

-- in keymaps.lua
map("t", "<Esc>", "<C-\\><C-n>", { silent = true, desc = "Exit terminal mode" })
map("t", "<C-h>", "<C-\\><C-n><C-w>h", { silent = true, desc = "Move left" })
map("t", "<C-l>", "<C-\\><C-n><C-w>l", { silent = true, desc = "Move right" })
map("t", "<C-j>", "<C-\\><C-n><C-w>j", { silent = true, desc = "Move down" })
map("t", "<C-k>", "<C-\\><C-n><C-w>k", { silent = true, desc = "Move up" })
