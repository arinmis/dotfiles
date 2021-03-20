" Set numbers by default 
:set number


" Press jk to return to normal mode when in insert mode
inoremap jk <ESC>
inoremap <ESC> <NOP>

" tab space size 
set tabstop=4

" Press jk to return to normal mode when in visual mode
vnoremap jk <ESC>
vnoremap <ESC> <NOP>

" Press jk when in Command mode, to go back to normal mode
cnoremap jk <ESC>


"Take care of indents for Java.
set autoindent
set si
set shiftwidth=4
"Java anonymous classes. Sometimes, you have to use them.
set cinoptions+=j1

let java_comment_strings=1
let java_highlight_java_lang_ids=1

"Indentation
filetype indent on
