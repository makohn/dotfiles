set tabstop=2
set number
execute pathogen#infect()

filetype indent plugin on

" Aesthetics ----------------------------------
syntax on
set term=xterm-256color
set t_Co=256
set background=dark
set laststatus=2

" C Programming ------------------------------
set cindent
set cinoptions=g-1

" Keymappings --------------------------------
imap jj <ESC>
