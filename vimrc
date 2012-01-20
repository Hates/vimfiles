"Use Vim settings, rather then Vi settings (much better!).
"This must be first, because it changes other options as a side effect.
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-rails'
Bundle 'kchmck/vim-coffee-script'

Bundle 'bufexplorer.zip'

"load ftplugins and indent files
filetype plugin on
filetype indent on

"allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Always show the statusline
set laststatus=2

"store lots of :cmdline history
set history=1000
set undolevels=1000

set showcmd     "show incomplete cmds down the bottom
set showmode    "show current mode down the bottom

set incsearch   "find the next match as we type the search
set hlsearch    "hilight searches by default
set ignorecase  "searches are case insensitive...
set smartcase   "...unless they contain one capital letter

"no backups please
set nobackup
set noswapfile
set viminfo=

"indent settings
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

"folding settings
set nofoldenable

" Set line numbers
set number

set wildmode=list:longest   "make cmdline tab completion similar to bash
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches

"display tabs and trailing spaces
set list
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅,extends:#

set formatoptions-=o "dont continue comments when pushing o/O

"vertical/horizontal scroll off settings
set scrolloff=6
set sidescrolloff=7
set sidescroll=1

"turn on syntax highlighting
syntax on

"some stuff to get the mouse going in term
set mouse=a
set ttymouse=xterm2

"tell the term has 256 colors
set t_Co=256

"hide buffers when not displayed
set hidden

"dont load csapprox if we no gui support - silences an annoying warning
if !has("gui")
    let g:CSApprox_loaded = 1
endif

"map Q to something useful
noremap Q gq

"make Y consistent with C and D
nnoremap Y y$

"mark syntax errors with :signs
let g:syntastic_enable_signs=1

" Color scheme
colors jellybeans
let jellybeans_use_lowcolor_black=1

" \ is the leader character
let mapleader = "\\"

" Leader shortcuts for Rails commands
map <Leader>m :Rmodel 
map <Leader>c :Rcontroller 
map <Leader>v :Rview 
map <Leader>u :Runittest 
map <Leader>f :Rfunctionaltest 
map <Leader>tm :RTmodel 
map <Leader>tc :RTcontroller 
map <Leader>tv :RTview 
map <Leader>tu :RTunittest 
map <Leader>tf :RTfunctionaltest 
map <Leader>sm :RSmodel 
map <Leader>sc :RScontroller 
map <Leader>sv :RSview 
map <Leader>su :RSunittest 
map <Leader>sf :RSfunctionaltest 

" Rails settings
command! Rroutes :Redit config/routes.rb
command! RTroutes :RTedit config/routes.rb

" Hide search highlighting
map <Leader>h :nohl <CR>

" Opens an edit command with the path of the currently edited file filled in
" Normal mode: <Leader>e
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" Add buffer cycling.
set hidden
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>

set linebreak   "wrap lines at convenient points
set nowrap " Set no wrap and bind.
map <F5> :set nowrap! <CR>

" Replace whitespace.
:nnoremap <silent> <F6> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" Ctrl-J/K deletes blank line below/above, and Ctrl-j/k inserts.
nnoremap <silent><C-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><C-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

" Bufexplorer
nnoremap <C-B> :BufExplorer<cr>

" NERDTree
nnoremap <Leader>r :NERDTreeToggle<CR>

" Highlight the current line
set cursorline

" Set the tag file search order
set tags=./tags

" User ack not grep
set grepprg=ack

" Set region to British English
set spelllang=en_gb

" Toggle spell checking on and off with `,s`
let mapleader = ","
nmap <silent> <leader>s :set spell!<CR>
