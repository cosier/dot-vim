
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


nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
