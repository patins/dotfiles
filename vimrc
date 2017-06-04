call plug#begin()

"Plug 'pangloss/vim-javascript'
"Plug 'kchmck/vim-coffee-script'
"Plug 'rakr/vim-one'
"Plug 'altercation/vim-colors-solarized'
"Plug 'kien/ctrlp.vim'
Plug 'mileszs/ack.vim'

Plug 'chriskempson/base16-vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'editorconfig/editorconfig-vim'

"Plug 'tpope/vim-surround'
"Plug 'tpope/vim-speeddating'
"Plug 'jceb/vim-orgmode'
"Plug 'scrooloose/syntastic'
"Plug 'tpope/vim-fugitive'
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'

call plug#end()

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
"set t_Co=256
"let g:zenburn_transparent = 1
"colors zenburn

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
autocmd Filetype html setlocal shiftwidth=2 tabstop=2
