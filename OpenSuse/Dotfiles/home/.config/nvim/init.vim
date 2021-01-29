call plug#begin('~/.local/share/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'dracula/vim'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dylanaraps/wal.vim'
Plug 'sts10/vim-pink-moon'
set softtabstop=2
source ~/.config/nvim/ext/terminal.vim
source ~/.config/nvim/ext/fileexp.vim
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
let g:coc_global_extensions = [ 'coc-markdownlint', 'coc-discord-rpc', 'coc-powershell', 'coc-kotlin-dev', 'coc-tsserver', 'coc-rls', 'coc-json' ]
" Load ext/*.vim
call plug#end()
set termguicolors
colorscheme pink-moon
set background=dark
set number
