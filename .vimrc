syntax on

" Spaces instead of tabs
filetype plugin indent on
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" Line numbers
set number
set ruler

" Relative line numbers
set rnu

" Colors
set background=dark
set t_Co=256
colorscheme enfocado 

" Show whitespace
set lcs=tab:——,space:·
set binary
set list

" Highlight current line number
highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
set cursorline

" Highlight search results
set hlsearch

let g:python_highlight_all = 1
"highlight Comment ctermfg=green

" Use ctrl-[hjkl] to select the active split
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

autocmd FileType c setlocal expandtab shiftwidth=2 tabstop=2
