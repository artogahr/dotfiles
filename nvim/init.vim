call plug#begin('~/.dotfiles/nvim/plugins')
	Plug 'neovim/nvim-lspconfig'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
	Plug 'tpope/vim-sensible'
	Plug 'tpope/vim-sleuth'
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-flagship'
"#	Plug 'nsf/gocode', {'rtp': 'nvim', 'do': '~/.config/nvim/plugins/gocode/nvim/symlink.sh'}
"#	Plug 'deoplete-plugins/deoplete-go', {'do': 'make'}
call plug#end()

set laststatus=2
set showtabline=2
set guioptions-=e

set number
set relativenumber
set shell=/usr/bin/zsh
