if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'easymotion/vim-easymotion'
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ervandew/supertab'
Plug 'jlanzarotta/bufexplorer'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'godlygeek/tabular'
Plug 'terryma/vim-multiple-cursors'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-surround'
Plug 'mbbill/undotree'
Plug 'edkolev/tmuxline.vim'
call plug#end()

syntax enable
syntax on
filetype plugin indent on

set tags=./tags;/
set lazyredraw
set nocompatible
set number
set nocursorline
set ruler
set shiftwidth=4
set expandtab
set softtabstop=4
set tabstop=4
set nobackup
set backupcopy=yes
set ignorecase smartcase
set nowrapscan
set incsearch
set hlsearch
set noerrorbells
set novisualbell
set t_vb=
set hidden
set guioptions-=T
set guioptions-=m
set guioptions-=r
set guioptions-=L
set smartindent
set backspace=indent,eol,start
set cmdheight=1
set laststatus=2
set mouse=a

"######################################
"GUI setting
if has("gui_running")
    colorscheme jellybeans
    let g:airline_powerline_fonts = 1

else
"######################################
"CLI setting
    set t_Co=256
    colorscheme 1989
    set background=dark

    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif

    " #airline
    let g:airline_theme="owo"
    " #airline unicode symbols
    let g:airline_left_sep = ' '
    let g:airline_right_sep = ' '
    let g:airline_symbols.linenr = '¶'
    let g:airline_symbols.branch = '⎇'
    let g:airline_symbols.paste = '∥'
    let g:airline_symbols.whitespace = 'Ξ'
    let g:airline#extensions#whitespace#enabled = 0

    " tmuxline
   	let g:tmuxline_separators = {
    	\ 'left' : '',
    	\ 'left_alt': '>',
    	\ 'right' : '',
    	\ 'right_alt' : '<',
    	\ 'space' : ' '} 
endif

"######################################
"Mappings
"fast move
nnoremap   <C-j>          5j
nnoremap   <C-k>          5k
nnoremap   <C-h>          5h
nnoremap   <C-l>          5l

"######################################
"NERDTree
nmap       <F5>           :NERDTreeToggle<CR>
"close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"######################################
" Tlist
nmap <F6> :TlistToggle<CR>
let Tlist_Show_One_File   = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Auto_Open       = 0
let Tlist_Auto_Update     = 1
let Tlist_Inc_Winwidth    = 1

"######################################
"esaymotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings
" Bi-directional find motion
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
nmap <Space> <Plug>(easymotion-s)

"jump to anywhere
nmap ga <Plug>(easymotion-jumptoanywhere)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1
map  <C-g> <Plug>(easymotion-sn)
omap <C-g> <Plug>(easymotion-tn)

"######################################
"startify
let g:startify_custom_header =
  \ map(split(system('fortune'), '\n'), '"   ". v:val') + ['','']
let g:startify_change_to_dir = 0

"######################################
"conqueTerm
let g:ConqueTerm_ReadUnfocused = 1
let g:ConqueTerm_CWInsert = 1
let g:ConqueTerm_FastMode = 1

"######################################
"CtrlP
nmap       <F7>           :CtrlPCurWD<CR>

"######################################
"undotree
nnoremap <F9> :UndotreeToggle<CR>
if has("persistent_undo")
    set undodir='~/.undodir/'
    set undofile
endif

"######################################
"python-mode
let g:pymode = 0
let g:pymode_warnings = 0
"let g:pymode_paths = []
"let g:pymode_options_max_line_length = 79
let g:pymode_options_colorcolumn = 0
let g:pymode_folding = 0

