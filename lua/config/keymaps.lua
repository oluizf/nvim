-- leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set

-- explorador de arquivos (netrw)
-- map("n", "<leader>cd", vim.cmd.Ex)

-- muda diretorio para o arquivo atual [tree.lua]
map("n", "<leader>cd", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })

-- espaco + w: salva
map("n", "<leader>w", "<cmd>w<CR>")

-- espaco + q: fecha normal (avisa se tiver alteracao sem salvar)
map("n", "<leader>q", "<cmd>q<CR>")

-- espaco + Q: forca saida descartando mudancas (:q!)
map("n", "<leader>Q", "<cmd>q!<CR>")

-- espaco + x: salva e fecha
map("n", "<leader>x", "<cmd>wq<CR>")

-- abrir split com o arquivo atual
map("n", "<leader>sv", "<cmd>vsplit<CR>") -- split vertical
map("n", "<leader>sh", "<cmd>split<CR>")  -- split horizontal
map("n", "<leader>sc", "<cmd>close<CR>")  -- fechar a janela onde o cursor esta

-- transitar entre as janelas abertas direto com Ctrl
map("n", "<C-h>", "<C-w>h") -- vai pra janela da esquerda
map("n", "<C-j>", "<C-w>j") -- vai pra janela de baixo
map("n", "<C-k>", "<C-w>k") -- vai pra janela de cima
map("n", "<C-l>", "<C-w>l") -- vai pra janela da direita
