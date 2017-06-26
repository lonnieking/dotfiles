call plug#begin('~/.config/nvim')

syntax on " enable color schemes

" NERD TREE
Plug 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>

" FZF
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
map <C-f> :FZF<CR>

" EASY ALIGN
Plug 'junegunn/vim-easy-align'
xmap ga <Plug>(EasyAlign)  " Start interactive EasyAlign in visual mode (e.g. vipga)
nmap ga <Plug>(EasyAlign)  " Start interactive EasyAlign for a motion/text object (e.g. gaip)

" OTHER
Plug 'tpope/vim-surround'
Plug 'chriskempson/base16-vim'
Plug 'itchyny/lightline.vim'
let g:lightline = { 'colorscheme': 'Tomorrow_Night' }

call plug#end()

if filereadable(expand("~/.vimrc_background"))
let base16colorspace=256
source ~/.vimrc_background
endif
