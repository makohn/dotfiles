" Enable line numbers
set number

" Set colorscheme to deus
set background=dark
colorscheme deus

" Load plugin for detected filetype
filetype plugin on

" Enable syntax highlighting
syntax on

" Support 256 color terminals 
set term=xterm-256color
set t_Co=256

" Always show status line
set laststatus=2

" Make tabs only two spaces
set tabstop=2

" Keymappings 
imap jj <ESC>
