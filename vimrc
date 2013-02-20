"Use Vim settings, rather then Vi settings (much better!).
"This must be first, because it changes other options as a side effect.
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'Lokaltog/vim-easymotion'
Bundle 'Lokaltog/vim-powerline'
Bundle 'gmarik/vundle'
Bundle 'godlygeek/tabular'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle 'kshenoy/vim-signature'
Bundle 'lukaszb/vim-web-indent'
Bundle 'msanders/snipmate.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'sjl/gundo.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-surround'

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
set wildignore+=*/tmp/*,*.so,*.swp,*.zip "ignore these files
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

"tell the term has 256 colors
set t_Co=256

" Color scheme
let g:Powerline_symbols = 'fancy'
set background=dark
colors Tomorrow-Night

" \ is the leader character
let mapleader = "\\"

" Leader shortcuts for Rails commands
map <Leader>m :Rmodel 
map <Leader>c :Rcontroller 
map <Leader>v :Rview 
map <Leader>u :Runittest 
map <Leader>f :Rfunctionaltest 
"map <Leader>tm :RTmodel 
"map <Leader>tc :RTcontroller 
"map <Leader>tv :RTview 
"map <Leader>tu :RTunittest 
"map <Leader>tf :RTfunctionaltest 
"map <Leader>sm :RSmodel 
"map <Leader>sc :RScontroller 
"map <Leader>sv :RSview 
"map <Leader>su :RSunittest 
"map <Leader>sf :RSfunctionaltest 

" Rails settings
command! Rroutes :Redit config/routes.rb
command! RTroutes :RTedit config/routes.rb

" Hide search highlighting
map <Leader>h :nohl <CR>

" Opens an edit command with the path of the currently edited file filled in
" Normal mode: <Leader>e
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" NERDTree
nnoremap <Leader>r :NERDTreeToggle<CR>

" Toggle Gundo
inoremap <silent> <F1> <ESC>:GundoToggle<CR>
nnoremap <silent> <F1> :GundoToggle<CR>
vnoremap <silent> <F1> <ESC>:GundoToggle<CR>

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

" Toggle paste
nnoremap <F4> :set paste!<Bar>set paste?<CR>

" Toggle wrapping
set linebreak "wrap lines at convenient points
set nowrap " Set no wrap and bind.
nnoremap <F5> :set nowrap! <CR>

" Replace whitespace.
nnoremap <silent> <F6> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" Ruby Hash syntax change
map <F9> :%s/:\([^ ]*\)\(\s*\)=>/\1:/g<CR>

" Findhighlighting
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" Ctrl-J/K deletes blank line below/above, and Ctrl-j/k inserts.
nnoremap <silent><C-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><C-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

" Bufexplorer
nnoremap <C-B> :BufExplorer<cr>

" Highlight the current line
set cursorline

" Set the tag file search order
set tags=./tags

" User ack not grep
set grepprg=ack

" Set region to British English
set spelllang=en_gb

" Map ENTER to save
nmap <CR> :write<CR>

" EasyMotion mappings
let g:EasyMotion_leader_key = ';'
nmap s ;w
nmap S ;b

" Toggle spell checking on and off with `,s`
nmap <silent> <leader>s :set spell!<CR>

" Relative numbers when not in insert mode
au BufEnter * :set rnu
au BufLeave * :set nu
au WinEnter * :set rnu
au WinLeave * :set nu
au InsertEnter * :set nu
au InsertLeave * :set rnu
au FocusLost * :set nu
au FocusGained * :set rnu
