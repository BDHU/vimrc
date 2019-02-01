" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" color theme pack plugin
Plug 'flazz/vim-colorschemes'
Plug 'bling/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'

" Initialize plugin system
call plug#end()

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

set cursorline          " highlight current line
 
set wildmenu            " visual autocomplete for command menu
 
set showmatch           " highlight matching [{()}]

set incsearch           " search as characters are entered

set hlsearch            " highlight matches

set showcmd             " show command in bottom bar

" Blink cursor on error instead of beeping (grr)
set visualbell

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
