call plug#begin('~/.local/share/nvim/plugged')
" Themes
Plug 'phanviet/vim-monokai-pro'
Plug 'morhetz/gruvbox'
" Linting/error checking
Plug 'w0rp/ale'
" Bottom bar
Plug 'itchyny/lightline.vim'
" Rainbow parentheses
Plug 'luochen1990/rainbow'
" Displays indentation levels
Plug 'sk1418/indentLine'
" Fancy start screen
Plug 'mhinz/vim-startify'
" For nerdtree: :help NERDTree.txt for documentation, :NERDTree to bring up
" navigation
Plug 'scrooloose/nerdtree'
" Git highlights bar
Plug 'airblade/vim-gitgutter'
" Some random stuff, search before enter pressed
Plug 'tpope/vim-sensible'
" Place, toggle, and display marks
Plug 'kshenoy/vim-signature'
" Deoplete - autocomplete service
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
" " Some extensions for down the road downloading
" " Multiple cursors
" Plug 'terryma/vim-multiple-cursors'
" " Fuzzy file finder
" Plug 'ctrlpvim/ctrlp.vim'
" " Extensive surroundings support
" Plug 'tpop/vim-surround'
endif
call plug#end()

set termguicolors
" colorscheme monokai_pro
colorscheme gruvbox

filetype plugin indent on
" show existing tab with 2 spaces width
set tabstop=2
" When indent with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab

set number

" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1

" Specifcies fixers for each language
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier', 'eslint'],
\}
" Error underlining
let g:ale_set_highlights = 1
let g:ale_set_signs = 1

" Lightline color configuration
let g:lightline = {
\ 'colorscheme': 'jellybeans',
\ }

" Rainbow parenthesis configuration
" Set to 0 if you want to enable later via :RainbowToggle
let g:rainbow_active = 1

" Use deoplete.
" See :help deoplete-options for a complete list of options
let g:deoplete#enable_at_startup = 1

" Startify settings
let g:startify_bookmarks = ["~/.config/nvim/init.vim"]
