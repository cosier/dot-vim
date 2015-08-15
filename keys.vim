
nnoremap <Leader>F <ESC>:NERDTreeToggle<CR>
nnoremap <C-F> <ESC>:NERDTreeFind<CR>

nnoremap <Leader>2 <ESC>:tabnext<CR>
nnoremap <Leader>1 <ESC>:tabprevious<CR>

nnoremap <C-E> <ESC>$i<Right>
nnoremap <C-A> <ESC>0i
imap <C-E> <ESC>$i<Right>
imap <C-A> <ESC>0i

nnoremap <C-R><C-R> <ESC>:source ~/.vim/vimrc<CR>
nnoremap <C-R><C-K> <ESC>:tabnew ~/.vim/keys.vim<CR>
nnoremap <C-R><C-V> <ESC>:tabnew ~/.vim/vimrc<CR>

nnoremap <C-S> <ESC>:Ag!
nnoremap <C-W><C-Z> <ESC>:ZoomWin<CR>

nnoremap <Leader>s <ESC>:FixWhitespace<CR>
nnoremap <Leader>c <ESC>:ClearAllCtrlPCaches<CR>
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

nnoremap <C-o> <ESC>:%s/2000/3030/g<CR>


nmap <leader>b <ESC>:CargoBuild<CR>

nmap <leader>h <ESC>:'<,'> !html2haml<CR>
vmap <leader>h <ESC>:'<,'> !html2haml<CR>

nmap <leader>e :%!haml2erb 2> /dev/null<CR>:set ft=eruby<CR>
vmap <leader>e :!haml2erb 2> /dev/null<CR>


