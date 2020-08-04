" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" color theme pack plugin
Plug 'flazz/vim-colorschemes'
Plug 'bling/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'milad14000/vim_p4'
Plug 'tpope/vim-commentary'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'majutsushi/tagbar'
Plug 'vim-scripts/autoload_cscope.vim'
Plug 'luochen1990/rainbow'
Plug 'chun-yang/auto-pairs'
Plug 'mg979/vim-visual-multi'
Plug 'airblade/vim-gitgutter'
Plug 'brookhong/cscope.vim'
Plug 'chazy/cscope_maps'

" Initialize plugin system
call plug#end()

" Rendering
set ttyfast

" basic editor setting
" Don't try to be vi compatible
set nocompatible

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" color theme
colorscheme gruvbox

" display line number by default"
set number

" Show file stats
set ruler

" Turn on syntax highlighting
syntax on

" Indention
set autoindent
set smartindent
set smarttab

" no wrap lines
set nowrap
set linebreak

set cursorline          " highlight current line
 
set wildmenu            " visual autocomplete for command menu
 
set showmatch           " highlight matching [{()}]

set incsearch           " search as characters are entered

set hlsearch            " highlight matches

set showcmd             " show command in bottom bar

" Blink cursor on error instead of beeping (grr)
set visualbell

set scrolloff=5
set ttyfast

set incsearch
set ignorecase
set smartcase

" Encoding
set encoding=utf-8

" enable mouse
set mouse=a

" color scheme(terminal)
set background=dark

" set tab to be 4 spaces
set expandtab ts=4 sw=4 ai

" set editor to be 80 columns limit
set colorcolumn=80

" Enable syntax highlighting
syntax enable 


" F8 for tagbar, required universial ctag installed
" Plugin settings {
    nmap <F8> :TagbarToggle<CR> 
    let g:rainbow_active = 1    " enable rainbow cursor display

    " omnicomplete
    if v:version >= 700
        set omnifunc=syntaxcomplete#Complete " override built-in C omnicomplete with C++ OmniCppComplete plugin
        let OmniCpp_GlobalScopeSearch   = 1
        let OmniCpp_DisplayMode         = 1
        let OmniCpp_ShowScopeInAbbr     = 0 "do not show namespace in pop-up
        let OmniCpp_ShowPrototypeInAbbr = 1 "show prototype in pop-up
        let OmniCpp_ShowAccess          = 1 "show access in pop-up
        let OmniCpp_SelectFirstItem     = 1 "select first item in pop-up
        set completeopt=menuone,menu,longest
    endif

    " cscope setting
    " source $HOME/.vim/plugged/cscope_maps/plugin/cscope_maps.vim
" } end of plugin setting
