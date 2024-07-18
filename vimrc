call plug#begin('~/.vim/plugged')

" Important custom key configuration
source ~/.vim/keys.vim

" Set nginx file extension association
au BufRead,BufNewFile *.nginx setfiletype nginx
au BufRead,BufNewFile *.conf setfiletype nginx

" Use standard Coffeescript 2 space indent
autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
autocmd BufRead,BufNewFile *.es6 setfiletype javascript
au BufReadPost *spacemacs set syntax=lisp

fun! SetupCommandAlias(from, to)
  exec 'cnoreabbrev <expr> '.a:from
        \ .' ((getcmdtype() is# ":" && getcmdline() is# "'.a:from.'")'
        \ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfun
call SetupCommandAlias("W","w")
call SetupCommandAlias("Q","q")


" Make sure you use single quotes
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align'
Plug 'altercation/vim-colors-solarized'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
" Plug 'scrooloose/syntastic'
Plug 'kovisoft/slimv'
Plug 'vim-scripts/Limp'

Plug 'modille/groovy.vim'
Plug 'tfnico/vim-gradle'

" Plug 'evanmiller/nginx-vim-syntax'
Plug 'chr4/nginx.vim'
Plug 'vim-scripts/nginx.vim'

Plug 'kchmck/vim-coffee-script'
Plug 'vim-trailing-whitespace'

Plug 'bling/vim-airline'
Plug 'rking/ag.vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'pangloss/vim-javascript'
Plug 'briancollins/vim-jst'

Plug 'skalnik/vim-vroom'
Plug 'mtscout6/vim-cjsx'
Plug 'mxw/vim-jsx'

Plug 'scrooloose/nerdcommenter'
Plug 'jceb/vim-orgmode'

Plug 'cespare/vim-toml'
Plug 'timonv/vim-cargo'
Plug 'rust-lang/rust.vim'

Plug 'vim-ruby/vim-ruby'
Plug 'cespare/vim-toml'
Plug 'timonv/vim-cargo'
Plug 'rust-lang/rust.vim'

Plug 'tpope/vim-haml'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-cucumber'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-dispatch'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'slim-template/vim-slim'

Plug 'leafo/moonscript-vim'

Plug 'vim-scripts/ZoomWin'

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

set hidden
" let g:racer_cmd = "/usr/local/bin/racer"
" let $RUST_SRC_PATH="/Users/bailey/Developer/ext/rust/src/"

syntax enable
filetype plugin indent on

let NERDSpaceDelims=1
let g:NERDTreeDirArrows=0


set nonumber
set background=dark
" colorscheme darcula
" colorscheme solarized
colorscheme default

if filereadable("~/.colour-theme.vim")
  so ~/.colour-theme.vim
endif

set colorcolumn=31
set backspace=indent,eol,start

set expandtab
set shiftwidth=2
set softtabstop=2
set autoindent
set noswapfile

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = '\v[\/](\.git|\.hg|\.svn|public|DS_Store|node_modules|vendor|\.log|\.pid)$'
let g:NERDTreeIgnore=['\~$', 'vendor', 'public/assets']

if exists("g:ctrl_user_command")
  unlet g:ctrlp_user_command
endif

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_c_no_include_search = 1
let g:syntastic_c_auto_refresh_includes = 1
let g:syntastic_c_remove_include_errors = 0
let g:syntastic_c_include_dirs = [ '../include', 'include' ]

set wildignore+=*\\public\/assets\\**

let &colorcolumn=join(range(121,999),",")
highlight ColorColumn ctermbg=255
highlight ColorColumn ctermbg=0
let &colorcolumn="80,".join(range(220,999),",")

function! CopyToOSClipboard() range
  exec(":silent !cat %:p | sed -n " . a:firstline . "," . a:lastline . "p | reattach-to-user-namespace pbcopy")
  :redraw!
endfunction

nnoremap <Leader><Leader>c :call CopyToOSClipboard()<CR>
vnoremap <Leader><Leader>c :call CopyToOSClipboard()<CR>

if has("gui_running")
 set guioptions-=r  "remove right-hand scroll bar
 set guioptions-=L  "remove left-hand scroll bar
endif
