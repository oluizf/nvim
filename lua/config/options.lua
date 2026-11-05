-- OPTIONS
local set = vim.opt

-- linhas
set.relativenumber = true
set.number = true

-- indentacao
set.tabstop = 4
set.shiftwidth = 4
set.autoindent = true
set.expandtab = true

-- procurar configs
set.ignorecase = true
set.smartcase = true

-- aparencia
set.termguicolors = true
set.signcolumn = "yes"

-- posicao da linha
set.cursorline = true

-- area de transferencia
set.clipboard = "unnamedplus" -- wayland: wl-clipboard, x11: xclip

-- backspace (padrao do neovim, seguro manter)
set.backspace = "indent,eol,start"

-- dividir janelas
set.splitbelow = true
set.splitright = true

-- historico de undo persistente
set.undofile = true
set.undodir = vim.fn.stdpath("data") .. "/undo"
