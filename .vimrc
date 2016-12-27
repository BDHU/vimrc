" Note: Skip initialization for vim-tiny or vim-small.
“ if 0 | endif

" Need to set this flag on in order to have many cool features on
 set nocompatible

 " Indent properly based on the current file’
filetype indent plugin on
filetype plugin on


 " Required:
 set runtimepath^=~/.vim/bundle/neobundle.vim/

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!

 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck
 // This is the NeoBundle plugin
 NeoBundle 'nanotech/jellybeans.vim'
 NeoBundle 'kien/ctrlp.vim'
 NeoBundle 'bling/vim-airline'
 NeoBundle 'scrooloose/nerdtree'
 NeoBundle 'rip-rip/clang_complete'
 NeoBundle 'powerline/powerline'
 NeoBundle 'altercation/vim-colors-solarized'
 NeoBundle 'keith/swift.vim'
 NeoBundle 'scrooloose/syntastic'


let s:clang_library_path='/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib'
if isdirectory(s:clang_library_path)
    let g:clang_library_path=s:clang_library_path
endif



" Enables highlight syntax
syntax enable
set nofoldenable
 
" Sweet colorscheme
" colorscheme codeschool
set background=dark
 
" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf-8
 
"" Display line numbers on the left
set number
 
"" Use mouse (only for resizing!)
set mouse=a
 
" Set the focus to the correct screen (ok, no more mouse thingies)
set mousefocus
 
" No more annoying sounds
set visualbell
 
" Do not scroll sideways unless we reach the end of the screen
set sidescrolloff=0
 
" highlight the status bar when in insert mode
if version >= 700
    if has("gui_running")
        au InsertEnter * hi StatusLine guifg=black guibg=green
        au InsertLeave * hi StatusLine guibg=black guifg=grey
    else
        au InsertEnter * hi StatusLine ctermfg=235 ctermbg=2
        au InsertLeave * hi StatusLine ctermbg=240 ctermfg=12
    endif
endif

“ Setting for syntax checker
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
 
" Infere the case-sensitivity
set infercase

" Used to enable vim airline interface
let g:airline#extensions#tabline#enabled=1

" Disable scrollbar
set guioptions-=r

“ Disable all scrollbars
set guioptions-=L

“ Enable more color
set t_Co=256

“ font settings
set guifont=Menlo\ Regular:h14

colorscheme solarized


