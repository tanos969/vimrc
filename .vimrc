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
"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

"airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"extra vim plugins
"
" html
Plugin 'mattn/emmet-vim'  " Emmet
Plugin 'gregsexton/matchtag'  " Match html tags (colorize tags)
Plugin 'othree/html5.vim'  " html5 completition
Plugin 'alvan/vim-closetag'  " Closes tag after >

"plugin vim-trimmer
Plugin 'derekprior/vim-trimmer'

"Plugin for indent lines
Plugin 'Yggdroot/indentLine'

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

"utf8 support
set encoding=utf-8

"config for YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"configuracion de airline
let g:airline#extensions#tabline#enabled = 1

"code look pretty :v
let python_highlight_all=1

"color select
if has('gui_running')
  set background=dark
  "colorscheme codeschool
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

"newtab
nnoremap <silent> <C-T> :tabnew<CR>

"config general
syntax on
syntax enable
set number "show linenumber
set wrap "break line
set showbreak=>>> "break line character
set showmatch " set show matching parenthesis
set hlsearch "highlighting search terms
set smartcase "search case sensitivity
set ignorecase "search ignore case sensitivity A or a
set incsearch "match all case search
set autoindent "always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set expandtab "don't use actual tab character
set shiftwidth=2 "indenting is 2 spaces
set smartindent "does the right thing (mostly) in programs
set smarttab
set softtabstop=2
set tabstop=2 "tabs are at proper location
"set guifont=FreeMono\ 14
"set guifont=Liberation\ Mono\ 14
set gfn=Inconsolata\ Medium\ 14
"set guifont=Monospace\ 15
"set guifont=Courier\ New\ 10
"set guifont=Inconsolata\ 11
"set guifont=Andale\ Mono\ 16
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

set ruler
set undolevels=1000
set backspace=indent,eol,start
set backspace=indent,eol,start "allow backspacing over everything in insert mode

"ignore files and dirs
set wildignore+=*/tmp/*,*.png,*.jpg,*.jpge,*.pyc,*/migrations,/media,*.git,__init__.py,*.sqlite3,*.swp

"high characters
set list
set listchars=tab:▸\ ,eol:¬
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

syn sync fromstart
" clear search highlight
nnoremap <C-f> :noh<cr>
