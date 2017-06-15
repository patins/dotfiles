call plug#begin()

"Plug 'pangloss/vim-javascript'
"Plug 'kchmck/vim-coffee-script'
"Plug 'rakr/vim-one'
"Plug 'altercation/vim-colors-solarized'

Plug 'chriskempson/base16-vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'editorconfig/editorconfig-vim'

Plug 'tpope/vim-surround'
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

" Relative Line Numbers
set relativenumber
" set number

" OSX Clipboard
set clipboard=unnamed

" Disable Arrow Keys
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

set tabstop=2 shiftwidth=2 expandtab

autocmd Filetype python match Error /\s\+$/
" autocmd Filetype html setlocal shiftwidth=2 tabstop=2
