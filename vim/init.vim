call plug#begin('~/.config/nvim')

syntax on " enable color schemes
filetype plugin indent on

" NERD TREE
" Plug 'scrooloose/nerdtree'
" map <C-n> :NERDTreeToggle<CR>
" noremap <C-j> :NERDTreeFind<CR>

" VINVEGAR
Plug 'tpope/vim-vinegar'
" let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'

" FZF
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
map <C-f> :FZF<CR>

" EASY ALIGN
Plug 'junegunn/vim-easy-align'
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" LANGUAGES
Plug 'vim-ruby/vim-ruby'
Plug 'pangloss/vim-javascript'
Plug 'kchmck/vim-coffee-script'
Plug 'elzr/vim-json'
Plug 'plasticboy/vim-markdown'
Plug 'othree/html5.vim'
Plug 'rust-lang/rust.vim'
Plug 'cespare/vim-toml'
Plug 'tpope/vim-fireplace'
Plug 'guns/vim-clojure-static'
Plug 'tomlion/vim-solidity'

" OTHER
Plug 'tpope/vim-surround'
Plug 'tpope/vim-obsession'
Plug 'dhruvasagar/vim-prosession'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-fugitive'
Plug 'chriskempson/base16-vim'
Plug 'itchyny/lightline.vim'
let g:lightline = { 'colorscheme': 'Tomorrow_Night' }

call plug#end()

filetype plugin indent on
set expandtab                               " On pressing tab, insert 4 spaces
set tabstop=2                               " tab equals two spaces
set autoindent                              " always set autoindenting on
set shiftwidth=2                            " number of spaces to use for autoindenting
set copyindent                              " copy the previous indentation on autoindenting
set smarttab                                " insert tabs on the start of a line according to shiftwidth, not tabstop
set number                                  " always show line numbers
set list listchars=tab:»·,trail:·,nbsp:·    " display extra whitespace
set mouse=a

let mapleader="\<Space>"

" copy to system clipboard using ctrl-c
vnoremap <C-c> "*y

" remove search highlights using \<space>
nnoremap <Leader><space> :nohlsearch<cr>
nmap <Leader><BS> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
set wildmode=list:longest,list:full
function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-p>"
  endif
endfunction
inoremap <Tab> <c-r>=InsertTabWrapper()<cr>
inoremap <S-Tab> <c-n>

if filereadable(expand("~/.vimrc_background"))
let base16colorspace=256
source ~/.vimrc_background
endif
