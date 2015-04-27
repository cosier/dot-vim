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
Plug 'rking/ag.vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'pangloss/vim-javascript'
Plug 'briancollins/vim-jst'

Plug 'skalnik/vim-vroom'
Plug 'mtscout6/vim-cjsx'

Plug 'scrooloose/nerdcommenter'

Plug 'tpope/vim-haml'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-cucumber'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-dispatch'

Plug 'slim-template/vim-slim'

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

let NERDSpaceDelims=1

set number
set background=dark
"colorscheme solarized

set ts=2
set expandtab
set shiftwidth=2
set softtabstop=2
set autoindent
set noswapfile

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=0
let &colorcolumn="80,".join(range(220,999),",")

function! CopyToOSClipboard() range
  exec(":silent !cat %:p | sed -n " . a:firstline . "," . a:lastline . "p | pbcopy")
  :redraw!
endfunction

nnoremap <Leader><Leader>c :call CopyToOSClipboard()<CR>
vnoremap <Leader><Leader>c :call CopyToOSClipboard()<CR>

