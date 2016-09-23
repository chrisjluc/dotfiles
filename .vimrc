set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'Valloric/YouCompleteMe'
Plugin 'fatih/vim-go'
Plugin 'bling/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'easymotion/vim-easymotion'
call vundle#end()

"  LEADER SHORTCUTS - Refer to here http://dougblack.io/words/a-good-vimrc.html
nnoremap <SPACE> <Nop>
let mapleader=" "   " leader is comma
imap jj <Esc>

" NERD TREE
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " Close nerdtree if it's the only window left
let NERDTreeIgnore = ['\.pyc$', '\.swp$']
nnoremap <leader>n :NERDTreeToggle<CR>

"Airline
set ttimeoutlen=50
let g:airline#extensions#tabline#enabled = 1
let g:airline_left_sep=''
let g:airline_right_sep=''

"Tagbar
let g:tagbar_autoclose = 1
let g:tagbar_autofocus = 1
let g:tagbar_compact = 1
noremap <leader>t :Tagbar<CR>

"YCM
autocmd CompleteDone * pclose " Don't show documentation preview

"Easymotion
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_keys = 'asdfjkl;ghewiovn'
nmap s <Plug>(easymotion-bd-w)

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs=1
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
let g:syntastic_python_checkers = ['pylint', 'flake8']

nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>
call pathogen#infect()

syntax on
filetype indent on
filetype plugin on
set nu
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

" from Damian Conway
nnoremap ; :
nnoremap : ;

" edit vimrc and load bindings
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" http://vim.wikia.com/wiki/Easy_edit_of_files_in_the_same_directory
cabbr <expr> %% expand('%:p:h')

set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc,*.classimap
set backspace=indent,eol,start
