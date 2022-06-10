call plug#begin('~/.dotfiles/nvim/plugins')
	Plug 'neovim/nvim-lspconfig'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
	Plug 'tpope/vim-sensible'
	Plug 'tpope/vim-sleuth'
	Plug 'tpope/vim-commentary'
	Plug 'tpope/vim-flagship'
	Plug 'psliwka/vim-smoothie'
	Plug 'lukas-reineke/indent-blankline.nvim'
"#	Plug 'nsf/gocode', {'rtp': 'nvim', 'do': '~/.config/nvim/plugins/gocode/nvim/symlink.sh'}
"#	Plug 'deoplete-plugins/deoplete-go', {'do': 'make'}
call plug#end()

set laststatus=0
set showtabline=0
"set guioptions-=e

set number
set laststatus=0
set relativenumber
set shell=/usr/bin/zsh
