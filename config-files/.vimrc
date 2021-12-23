set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" emmet for vim
Plugin 'mattn/emmet-vim'

" code formatter
Plugin 'Chiel92/vim-autoformat'

" js highlight
Plugin 'pangloss/vim-javascript'

" template literals highlight
Plugin 'jonsmithers/vim-html-template-literals'

" vue syntax highlight
Plugin 'posva/vim-vue'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required



" make vim and system clickboard common
set clipboard=unnamedplus

" Set numbers by default
set number

" Press jk to return to normal mode when in insert mode
" consider all combinations to avoid mistake
inoremap jK <ESC>
inoremap Jk <ESC>
inoremap JK <ESC>
inoremap jk <ESC>
inoremap <ESC> <NOP>


" Press jk to return to normal mode when in visual mode
vnoremap jK <ESC>
vnoremap Jk <ESC>
vnoremap JK <ESC>
vnoremap jk <ESC>
vnoremap <ESC> <NOP>

" Press jk when in Command mode, to go back to normal mode
cnoremap jK <ESC>
cnoremap Jk <ESC>
cnoremap JK <ESC>
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

" js file
autocmd filetype javascript setlocal shiftwidth=2 softtabstop=2 expandtab

" vue file
autocmd filetype vue setlocal shiftwidth=2 softtabstop=2 expandtab

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

syntax on


" format on save
" au BufWrite * :Autoformat
" format when I want 
noremap <S-f> :Autoformat<CR>


" responsive html boilerplate
let g:user_emmet_settings = {
            \  'variables': {'lang': 'en'},
            \  'html': {
                \    'default_attributes': {
                    \      'option': {'value': v:null},
                    \      'textarea': {'id': v:null, 'name': v:null, 'cols': 10, 'rows': 10},
                    \    },
                    \    'snippets': {
                        \      'html:5': "<!DOCTYPE html>\n"
                        \              ."<html>\n"
                        \              ."\t<head>\n"
                        \              ."\t\t<meta charset=\"${charset}\">\n"
                        \              ."\t\t<title></title>\n"
                        \              ."\t\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
                        \              ."\t</head>\n"
                        \              ."\t<body>\n\t${child}|\n\t</body>\n"
                        \              ."</html>",
                        \    },
                        \  },
                        \}





" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10


" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Set the commands to save in history default number is 20.
set history=1000


" shows currently editing filename
set laststatus=2
