call plug#begin('~/.dotfiles/nvim/plugins')
	Plug 'neovim/nvim-lspconfig'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
"#	Plug 'nsf/gocode', {'rtp': 'nvim', 'do': '~/.config/nvim/plugins/gocode/nvim/symlink.sh'}
"#	Plug 'deoplete-plugins/deoplete-go', {'do': 'make'}
call plug#end()


set number
set relativenumber
set shell=/usr/bin/zsh
