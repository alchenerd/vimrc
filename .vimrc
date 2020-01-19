set nocompatible " No vi thanks

" vim=plug
call plug#begin('~/.vim/plugged')
call plug#end()

syntax on " With colored syntax
set number " The number of line 
set relativenumber " Relative number from active line
set wrap " No wrapping on long lines
set ruler " Show status bar below
set incsearch " Incremental search
set showcmd " Show my command
set showmatch " Show matching bracket
set ignorecase " Case insensitive search
set smartcase " Smart case match
set backspace=eol,start,indent

