set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'

Plugin 'fatih/vim-go'
Plugin 'vim-syntastic/syntastic'
Plugin 'ervandew/supertab'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set t_Co=256
syntax enable
set number
set expandtab
set incsearch
set hlsearch

" Set theme
set background=dark
let g:solarized_termtrans = 1       " workaround the mismatching backgrounds
colorscheme solarized

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'bubblegum'

" Statusline
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_go_checkers = ['go']

" Highlight
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
