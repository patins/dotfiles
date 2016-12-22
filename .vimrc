syntax on
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
"Plugin 'rakr/vim-one'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/ctrlp.vim'
Plugin 'mileszs/ack.vim'

Plugin 'chriskempson/base16-vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'editorconfig/editorconfig-vim'

Plugin 'tpope/vim-surround'

"Plugin 'scrooloose/syntastic'

Plugin 'tpope/vim-fugitive'

call vundle#end()

filetype plugin indent on

" Theme
"set background=dark
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif
"colorscheme one
hi Normal ctermbg=none
"colorscheme solarized
"hi Normal ctermfg=white ctermbg=NONE
"hi SpecialKey ctermfg=none 
"hi NonText ctermbg=none

" Airline
let g:airline_powerline_fonts = 1
set laststatus=2

" CtrlP
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.py[ocd]
if executable('ag')
 set grepprg=ag\ --nogroup\ --nocolor
 let g:ctrlp_user_command='ag %s -l --nocolor -g ""'
 let g:ctrlp_use_caching=0
 let g:ackprg = 'ag --vimgrep'
endif

" Syntastic
"let g:syntastic_python_flake8_args='--ignore=E302,E501'
let g:syntastic_python_checker_args='--disable R,C'
let g:syntastic_python_checkers=['pylint']
" Relative Line Numbers
set relativenumber
set number

" OSX Clipboard
set clipboard=unnamed

" Disable Arrow Keys
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

autocmd Filetype python match Error /\s\+$/
