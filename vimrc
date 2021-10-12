" copy and paste from vim clickboard
" https://vim.fandom.com/wiki/GNU/Linux_clipboard_copy/paste_with_xclip
vmap <leader>xyy :!xclip -f -sel clip<CR>
map  <leader>xpp :-1r !xclip -o -sel clip<CR>

" Set numbers by default 
:set number


" Press jk to return to normal mode when in insert mode
inoremap jk <ESC>
inoremap <ESC> <NOP>


" Press jk to return to normal mode when in visual mode
vnoremap jk <ESC>
vnoremap <ESC> <NOP>

" Press jk when in Command mode, to go back to normal mode
cnoremap jk <ESC>

" Indentaions

" dart file
autocmd FileType dart setlocal shiftwidth=2 softtabstop=2 expandtab

" java file
autocmd FileType java setlocal shiftwidth=4 softtabstop=4 expandtab

" python file
autocmd FileType ptyhon setlocal shiftwidth=4 softtabstop=4 expandtab

" html file 
autocmd FileType html setlocal shiftwidth=2 softtabstop=2 expandtab

" JS html 
autocmd FileType javascript setlocal shiftwidth=4 softtabstop=4 expandtab




" Other things

"Take care of indents for Java.
" set autoindent
set si

"Java anonymous classes. Sometimes, you have to use them.
set cinoptions+=j1

let java_comment_strings=1
let java_highlight_java_lang_ids=1

filetype indent on
syntax on




