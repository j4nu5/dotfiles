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
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'airblade/vim-gitgutter'
Plugin 'vimwiki/vimwiki'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" Custom settings
set t_Co=256
syntax enable
set number
set incsearch
set hlsearch
set number relativenumber

set expandtab
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent
set cindent
set colorcolumn=50,72,80


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


" Disable Syntastic C++
let g:syntastic_cpp_checkers = ['']


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


" You Complete Me
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

