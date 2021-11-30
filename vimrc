" make vim and system clickboard common 
set clipboard=unnamedplus

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


" default indentation 
set shiftwidth=4 
set softtabstop=4
set expandtab


" Custom Indentaions

" html file 
autocmd FileType html setlocal shiftwidth=2 softtabstop=2 expandtab

" dart file
autocmd FileType dart setlocal shiftwidth=2 softtabstop=2 expandtab

" dart yaml 
autocmd FileType yaml setlocal shiftwidth=2 softtabstop=2 expandtab



" Other things
set si
set smartindent
set autoindent

"Java anonymous classes. Sometimes, you have to use them.
set cinoptions+=j1

let java_comment_strings=1
let java_highlight_java_lang_ids=1


" run plugin manager
execute pathogen#infect()
filetype indent on
syntax on



