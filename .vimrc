syntax on
filetype plugin indent on

" Pathogen
execute pathogen#infect()

" General
set number                      " Show line numbers
set linebreak                   " Break lines at word (requires Wrap lines)
set showbreak=+++               " Wrap-broken line prefix
set textwidth=100               " Line wrap (number of cols)
set showmatch                   " Highlight matching brace
set visualbell                  " use a visual bell instead of beeps
set mouse=a                     " enable mouse

set hlsearch                    " Highlight all search results
set smartcase                   " Enable smart-case search
set ignorecase                  " Always case-insensitive
set incsearch                   " Searches for strings incrementally

set autoindent	                " Auto-indent new lines
set shiftwidth=2                " Number of auto-indent spaces
set smartindent	                " Enable smart-indent
set smarttab	                " Enable smart-tabs
set softtabstop=4               " Number of spaces per Tab

" Advanced
set ruler                       " Show row and column ruler information
set undolevels=1000             " Number of undo levels
set backspace=indent,eol,start  " Backspace behaviour

set list listchars=tab:»·,trail:·,nbsp:·    " display extra whitespace

let g:rainbow_conf = {
\    'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\    'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\    'guis': [''],
\    'cterms': [''],
\    'operators': '_,_',
\    'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold']}

" Lightline
set laststatus=2
let g:lightline = {'colorscheme': 'seoul256'}

let mapleader="\<Space>"
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
map <C-f> :FZF<CR>

" Python
let python_highlight_all = 1
au FileType python setl sw=2 sts=2 et

" copy to system clipboard using ctrl-c
vnoremap <C-c> "*y
" remove search highlights using \<space>
nnoremap <Leader><space> :nohlsearch<cr>
nmap <Leader><BS> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

set termguicolors
let base16colorspace=256
colorscheme base16-material-darker

" load .vimrc_background if it exists
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif
