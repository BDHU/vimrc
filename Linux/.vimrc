" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" color theme pack plugin
Plug 'flazz/vim-colorschemes'

Plug 'bling/vim-airline'

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
colorscheme molokai

" display line number by default"
set number

" Show file stats
set ruler

" Turn on syntax highlighting
syntax on

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" color scheme(terminal)
set background=dark

" Enable syntax highlighting
syntax enable 
