" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" Specify a directory for plugins
" " - For Neovim: ~/.local/share/nvim/plugged
" " - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'Yggdroot/indentLine'

Plug 'kien/ctrlp.vim'

Plug 'ludovicchabant/vim-gutentags'
let g:gutentags_cache_dir = '~/.tags_cache'

Plug 'jlanzarotta/bufexplorer'
map <C-b> :BufExplorer<CR>

Plug 'simnalamburt/vim-mundo'
inoremap <silent> <F1> <ESC>:MundoToggle<CR>
nnoremap <silent> <F1> :MundoToggle<CR>
vnoremap <silent> <F1> <ESC>:MundoToggle<CR>

Plug 'Lokaltog/vim-easymotion'
nmap s <Plug>(easymotion-w)
nmap S <Plug>(easymotion-b)

Plug 'scrooloose/nerdcommenter'

Plug 'jeetsukumaran/vim-filebeagle'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
let g:NERDTreeMouseMode=1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
nnoremap <Leader>r :NERDTreeToggle<CR>
nnoremap <Leader>t :NERDTreeFind<CR>

Plug 'tpope/vim-surround'
Plug 'tpope/vim-abolish'

Plug 'vim-ruby/vim-ruby', { 'for': ['ruby', 'eruby'] }
Plug 'tpope/vim-rails', { 'for': ['ruby', 'eruby'] }
Plug 'tpope/vim-haml', { 'for': 'haml' }
Plug 'slim-template/vim-slim', { 'for': 'slim' }
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'elixir-lang/vim-elixir', { 'for': 'elixir' }
Plug 'slashmili/alchemist.vim', { 'for': 'elixir' }
let g:alchemist_tag_disable = 1
Plug 'rhysd/vim-crystal', { 'for': 'crystal' }
Plug 'fatih/vim-go', { 'for': 'go' }
au FileType go nmap ® <Plug>(go-run-split)
au FileType go nmap † <Plug>(go-test)
let g:go_term_mode = "split"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

Plug 'rust-lang/rust.vim', { 'for': 'rust' }
let g:rustfmt_autosave = 1

Plug 'majutsushi/tagbar'
nmap <F2> :TagbarToggle<CR>
let g:tagbar_type_elixir = {
    \ 'ctagstype' : 'elixir',
    \ 'kinds' : [
        \ 'f:functions',
        \ 'functions:functions',
        \ 'c:callbacks',
        \ 'd:delegates',
        \ 'e:exceptions',
        \ 'i:implementations',
        \ 'a:macros',
        \ 'o:operators',
        \ 'm:modules',
        \ 'p:protocols',
        \ 'r:records'
    \ ]
    \ }

"" Theme plugins.
Plug 'itchyny/lightline.vim'
Plug 'dracula/vim'

" Initialize plugin system
call plug#end()

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" Theme options
set background=dark
colorscheme dracula
let g:lightline = {
      \ 'colorscheme': 'Tomorrow_Night',
      \ 'component_function': {
      \   'filename': 'LightLineFilename'
      \ }
      \ }
function! LightLineFilename()
  return expand('%')
endfunction

" Remove scrollbars
set guioptions=
set guifont=Hasklig:h14

" \ is the leader character
let mapleader = "\\"

" Security
set modelines=0

" Show line numbers
set number

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell
set noerrorbells

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Display tabs and trailing spaces
set list
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅,extends:#
set showbreak=↪

" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL
