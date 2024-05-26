--------------Neovim API aliases----------

local cmd 	= vim.cmd
local exec 	= vim.api.nvim_exec
local fn 	= vim.fn
local g 	= vim.g
local opt 	= vim.opt
local o 	= vim.o
local wo 	= vim.wo

------------------General-----------------

g.mapleader 	= " "

--------------------UI--------------------
opt.number 	= true
opt.relativenumber = true
--opt.guicursor 	= ""

opt.tabstop    	= 4
opt.softtabstop = 4
opt.shiftwidth	= 4
opt.expandtab 	= true

opt.hlsearch    = false
opt.incsearch   = true


opt.scrolloff    = 100
opt.signcolumn  = "no"
opt.isfname:append "@-@"

-----------------settings-----------------

o.clipboard = "unnamedplus"
opt.termguicolors = true
-- o.term = "zsh"
o.encoding = "utf-8"
o.termguicolors = true
o.cursorline = true
