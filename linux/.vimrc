" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" color theme pack plugin
Plug 'flazz/vim-colorschemes'
Plug 'morhetz/gruvbox'
Plug 'NLKNguyen/papercolor-theme'
Plug 'scrooloose/nerdtree'
Plug 'milad14000/vim_p4'
Plug 'tpope/vim-commentary'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'majutsushi/tagbar'
Plug 'luochen1990/rainbow'
Plug 'chun-yang/auto-pairs'
Plug 'mg979/vim-visual-multi'
Plug 'airblade/vim-gitgutter'
Plug 'dijkstracula/vim-ivy'

" Initialize plugin system
call plug#end()

" Rendering
set ttyfast

" to play along with tmux
set t_Co=256

" basic editor setting
" Don't try to be vi compatible
set nocompatible

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime

" Fast saving
nmap <leader>w :w!<cr>

" :W sudo saves the file
" (useful for handling the permission-denied error)
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!


" color theme
" silent! colorscheme gruvbox
silent! colorscheme PaperColor

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

set fillchars+=vert:│
highlight EndOfBuffer ctermfg=black ctermbg=black

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

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

    " source $HOME/.vim/plugged/cscope_maps/plugin/cscope_maps.vim
" } end of plugin setting
