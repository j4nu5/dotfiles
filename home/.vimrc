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


" Custom settings
set t_Co=256
syntax enable
set number
set expandtab
set incsearch
set hlsearch


" Set theme

" workaround the mismatching backgrounds of vim and terminal solarized
let g:solarized_termtrans = 1

colorscheme solarized
set background=dark

" without this, visual selection makes the text invisible
highlight! link Visual CursorLine


" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'bubblegum'


" Syntastic Statusline
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*


" Syntastic C++
let g:syntastic_cpp_compiler="clang++"
let g:syntastic_cpp_compiler_options="-std=c++11"


" Syntastic Go
let g:syntastic_go_checkers = ['go']


" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" Go highlight
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
