set tabstop=2
set number
execute pathogen#infect()

filetype indent plugin on

" Aesthetics ----------------------------------
syntax on
set term=xterm-256color
set t_Co=256
set background=dark
colorscheme dracula 
set laststatus=2
let g:airline_theme='powerlineish'

" C Programming ------------------------------
set cindent
set cinoptions=g-1

" Keymappings --------------------------------
imap jj <ESC>

" Hardmode -----------------------------------
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Right> <Nop>
noremap <Left> <Nop>

inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Right> <Nop>
inoremap <Left> <Nop>