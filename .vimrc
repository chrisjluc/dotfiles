set nu
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>
call pathogen#infect()

syntax on

filetype indent on
filetype plugin on
set autoindent

set hls

set lbr

" UI CONFIG
set tabstop=4
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4
set expandtab   " tabs are spaces
set smarttab
set cindent
set lazyredraw  " redraw when we have to
set wildmenu  " visual autocomplete for command menu
set showmatch   " highlight matching [{()}]

" SEARCH
set ignorecase
set smartcase
set incsearch   " search as characters are entered
set hlsearch    " highlight matches
" turn off search highlighting
nnoremap <leader><space> :nohlsearch<CR>
autocmd BufWritePre * :%s/\s\+$//e

" MOVEMENT
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" move to beginning/end of line, since B and E aren't mapped to anything
nnoremap B ^
nnoremap E $
" $/^ doesn't do anything, train to use new mappings
nnoremap $ <nop>
nnoremap ^ <nop>

"  LEADER SHORTCUTS - Refer to here http://dougblack.io/words/a-good-vimrc.html
imap jj <Esc>
" from Damian Conway
nnoremap ; :
nnoremap : ;

let mapleader=","   " leader is comma
" edit vimrc and load bindings
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" http://vim.wikia.com/wiki/Easy_edit_of_files_in_the_same_directory
cabbr <expr> %% expand('%:p:h')

set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc,*.class
