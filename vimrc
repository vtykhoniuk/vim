if has('win32')
    source $VIMRUNTIME/mswin.vim
    behave mswin
endif

"Syntax highlighting
filetype off
filetype plugin indent on
syntax on

set sessionoptions-=options

"mkdir -p ~/.vim/colors && cd ~/.vim/colors
"wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
"set up color scheme
set t_Co=256
color wombat256mod

"Highlight line with cursor
set cursorline 

"Use text-style tabs
"set guioptions-=e

"Insert spaces whenever <TAB> is pressed
"If you do need a <TAB> - Ctrl-V<Tab>
set expandtab

"Number of spaces that would be inserted
"whenever <tab> is pressed
set tabstop=4

"Number of spaces for indentation (shift
"left, shift right)
set shiftwidth=4

"when shifting right, shift to next tab position
"rather than shift right by shiftwidth
set shiftround

"Selfeplanatory
set encoding=utf-8

"Switch off automatic creation of backup and swap files
set nobackup
set nowritebackup
set noswapfile

"Highlight search patterns
set hlsearch

"case insensetive search
set ignorecase

"smart search feature: 'The' will find only 'The'
"while 'the' will find 'The', 'tHe', 'the'...
set smartcase

"Jump to the search while typing
set incsearch

"set guioptions+=aiAeT

"enables a menu at the bottom of the vim/gvim window
set wildmenu
set wildmode=list:longest,full

"Which file format to use for new files
"and durign autodetec
set fileformat=unix

"show file number
set number

"width of the document
set tw=79

"don't wrap lines on load
set nowrap

"red vertical line on 80th column
set colorcolumn=80
highlight ColorColumn ctermbg=233

"selfexplanatory
set history=700
set undolevels=700

"Force NERDTree to open ~/Work (Mac OS) or ~/Documents (Win32) on startup
if has('win32')
    cd ~/Documents
elseif has('unixmac')
    cd ~/Work
endif

let mapleader = "q"
map <Leader>w :tabclose<CR>
map <Leader>t :tabnew<CR>
map <Leader>< :tabprev<CR>
map <Leader>> :tabprev<CR>

"mkdir -p ~/.vim/autoload ~/.vim/bundle && \
"curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
"Convinient VIM plugin system
execute pathogen#infect()

"==================
"NERDTree
"==================
"git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
"disable scrollbar on the left
set guioptions-=L
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.swp$', '__pycache__']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
let g:NERDTreeWinPos = "right"

"==================
"NERDTree tabs
"==================
"Allows NERDTree to be used in tabs
"cd ~/.vim/bundle
"git clone https://github.com/jistr/vim-nerdtree-tabs.git
map <Leader>e :NERDTreeTabsToggle<CR>

"==================
"NERDTree direnter
"==================
"When using Vim NERDTree plugin and set NERDTreeMapOpenInTab to "<CR>"
"enter key also opens directories in new tabs, which makes no sense. This
"plugin fixes this.

"==================
"Powerline
"==================
"cd ~/.vim/bundle
"git clone git://github.com/Lokaltog/vim-powerline.git

"The statusline is hidden/only appears in split windows!
set laststatus=2
let g:Powerline_symbols='fancy'

"==================
"CtrlP
"==================
"cd ~/.vim/bundle
"git clone git://github.com/kien/ctrlp.vim.git
let g:ctrlp_max_height=30
map <C-b> :CtrlPBuffer<CR>
set wildignore+=*.pyc

"mkdir ~/.vim/ftplugin && cd ~/.vim/ftplugin
"wget -O ./python_editing.vim http://www.vim.org/scripts/download_script.php?src_id=5492
"don'e autofold Python subroutines
set nofoldenable

"git clone https://github.com/klen/python-mode
let g:pymode_syntax = 1
let g:pymode_rope_completion = 1
let g:pymode_indent = 1
let g:pymode_folding = 1
let g:pymode_lint = 1
"
" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

"==================
"vim-airline
"==================
"cd ~/.vim/bundle
"git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
"Integration with powerline fonts
let g:airline_powerline_fonts = 1
"Automatically displays all buffers when there's only one tab open.
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#close_symbol = '×'
let g:airline#extensions#tabline#show_close_button = 0
