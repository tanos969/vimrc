set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Use za to fold or unfold
"Plugin 'tmhedberg/SimpylFold'

"auto indent python
Plugin 'vim-scripts/indentpython.vim'

"autocomplete
Bundle 'Valloric/YouCompleteMe'

"check syntax
Plugin 'scrooloose/syntastic'

"
Plugin 'nvie/vim-flake8'

"solarized theme
Plugin 'micha/vim-colors-solarized'

"molokai theme
"Plugin 'tomasr/molokai'

"tree
Plugin 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>

"ctrl+P
Plugin 'kien/ctrlp.vim'

"powerline
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

"plugin emmet para autocompletado html
Plugin 'mattn/emmet-vim'

"plugin vim-trimmer
Plugin 'derekprior/vim-trimmer'

"Plugin for indent lines
Plugin 'yggdroot/indentline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

if has('gui_running')
  set background=dark
  colorscheme solarized
endif

"colorscheme molokai
"let g:molokai = 1

let python_highlight_all=1
syntax on

"clipboard
set clipboard=unnamed

set number
set wrap
set showbreak=>>>
set showmatch
set hlsearch
set smartcase
set ignorecase
set incsearch

set autoindent
set expandtab
set shiftwidth=2
set smartindent
set smarttab
set softtabstop=2
set tabstop=2

au Filetype python setl et ts=2 sw=2
au BufNewFile,BufRead *.py
    \set ai sw=2 ts=2 sta et fo=croql
    \set tabstop=2
    \set softtabstop=2
    \set shiftwidth=2
    \set textwidth=79
    \set expandtab
    \set autoindent
    \set fileformat=unix

set ruler
set undolevels=1000
set backspace=indent,eol,start

"set guifont=Monospace\ 10
"set guifont=Courier\ New\ 10
set guifont=Inconsolata\ 11

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
