call plug#begin('~/.vim/plugged')

" Important custom key configuration
source ~/.vim/keys.vim

" Set nginx file extension association
au BufRead,BufNewFile *.nginx setfiletype nginx

" Use standard Coffeescript 2 space indent
autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab

" Make sure you use single quotes
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align'
Plug 'altercation/vim-colors-solarized'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'evanmiller/nginx-vim-syntax'
Plug 'kchmck/vim-coffee-script'
"Plug 'vim-trailing-whitespace'
Plug 'bling/vim-airline'

" On-demand loading
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using git URL
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Plugin options
Plug 'nsf/gocode', { 'tag': 'go.weekly.2012-03-13', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }

" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'

call plug#end()

""""""""""""""""""""""""""""""""""""""""""
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

syntax enable
filetype plugin indent on

set background=dark
colorscheme solarized

set ts=4
set expandtab

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
