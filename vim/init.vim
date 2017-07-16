call plug#begin('~/.config/nvim')

syntax on " enable color schemes

" NERD TREE
Plug 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>
noremap <C-j> :NERDTreeFind<CR>

" FZF
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
map <C-f> :FZF<CR>

" EASY ALIGN
Plug 'junegunn/vim-easy-align'
xmap ga <Plug>(EasyAlign)  " Start interactive EasyAlign in visual mode (e.g. vipga)
nmap ga <Plug>(EasyAlign)  " Start interactive EasyAlign for a motion/text object (e.g. gaip)

" LANGUAGES
Plug 'vim-ruby/vim-ruby'
Plug 'pangloss/vim-javascript'
Plug 'elzr/vim-json'
Plug 'plasticboy/vim-markdown'
Plug 'othree/html5.vim'

" OTHER
Plug 'tpope/vim-surround'
Plug 'chriskempson/base16-vim'
Plug 'tpope/vim-fugitive'
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

nnoremap <Leader><space> :nohlsearch<cr>
let mapleader="\<Space>"

nmap <Leader><BS> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

if filereadable(expand("~/.vimrc_background"))
let base16colorspace=256
source ~/.vimrc_background
endif
