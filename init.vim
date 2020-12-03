call plug#begin('~/AppData/Local/nvim-data/plugged')

Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-surround'
Plug 'dense-analysis/ale'
Plug 'terryma/vim-multiple-cursors'
Plug 'altercation/vim-colors-solarized'
Plug 'OmniSharp/omnisharp-vim'
Plug 'neoclide/coc.nvim'
Plug 'tpope/vim-dispatch'
Plug 'sheerun/vim-polyglot'

call plug#end()

"Use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
	  let col = col('.') - 1
	    return !col || getline('.')[col - 1]  =~ '\s'
    endfunction

    inoremap <silent><expr> <Tab>
          \ pumvisible() ? "\<C-n>" :
          \ <SID>check_back_space() ? "\<Tab>" :
          \ coc#refresh()

let g:OmniSharp_start_without_solution = 1
