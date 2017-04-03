"Vim de Goku :v


set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

"plugin for indent with files in python
Plugin 'vim-scripts/indentpython.vim'

"YouCompleteMe
Bundle 'Valloric/YouCompleteMe'

"virtualenv
Plugin 'jmcantrell/vim-virtualenv'

"syntax check
Plugin 'scrooloose/syntastic'

"PEP8 check python
Plugin 'nvie/vim-flake8'

"color shemes
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'

"nerd tree
Plugin 'scrooloose/nerdtree'
"Nerd tree tabs
"Plugin 'jistr/vim-nerdtree-tabs'

"control p :v
Plugin 'kien/ctrlp.vim'

"power line
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

"extra vim plugins
"
"plugin emmet para autocompletado html
Plugin 'mattn/emmet-vim'

"plugin vim-trimmer
Plugin 'derekprior/vim-trimmer'

"Plugin for indent lines
"Plugin 'yggdroot/indentline'
Plugin 'Yggdroot/indentLine'
"Plugin 'nathanaelkane/vim-indent-guides'

"Color for Css
Plugin 'ap/vim-css-color'

"javascript
Plugin 'jelera/vim-javascript-syntax'

"autocompleta parentesis
Plugin 'Raimondi/delimitMate'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


"""
"vim config
"split
set splitbelow
set splitright
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
"set foldmethod=indent
"set foldlevel=99
" Enable folding with the spacebar
"nnoremap <space> za

"PEP8 for python
"tab for 4 is standar, but not here
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

"html with javascript
"au BufRead *.html set filetype=htmlm4

"diferent indent for diferent files
"au BufNewFile,BufRead *.js, *.html, *.css
"  \ set tabstop=2
"  \ set softtabstop=2
"  \ set shiftwidth=2

"avoid extraneous whitespace
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
"au BufRead,BufNewFile *.py,*.html,*.js,*.css match BadWhitespace /\s\+$/

"utf8 support
set encoding=utf-8

"config for YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>


"code look pretty :v
let python_highlight_all=1

"color select
if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif

"F5 for change theme solarized
call togglebg#map("<F5>")

"nerd tree ignore
let NERDTreeIgnore=['\.pyc$', '\~$']
"nerd tree short cut
map <C-n> :NERDTreeToggle<CR>

"system clipboard
set clipboard=unnamed


"config general
syntax on
syntax enable
set number
set wrap!
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
"set guifont=Monospace\ 10
"set guifont=Courier\ New\ 10
set guifont=Inconsolata\ 11
"set guifont=Andale\ Mono\ 11
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

set ruler
set undolevels=1000
set backspace=indent,eol,start

"ignore files and dirs
set wildignore+=*/tmp/*,*.png,*.jpg,*.jpge,*.pyc,*/migrations,/media,*.git,__init__.py,*.sqlite3,*.swp

"high characters
set list
set listchars=tab:▸\ ,eol:¬
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

syn sync fromstart
