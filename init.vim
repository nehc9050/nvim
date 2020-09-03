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
" Adding surroundings functionality
Plug 'tpope/vim-surround'
" Typescript syntax support
Plug 'HerringtonDarkholme/yats.vim'
" JS support
Plug 'yuezk/vim-js'
" jsx syntax highlighting support
Plug 'maxmellon/vim-jsx-pretty'
" Flutter/dart support
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
" Fuzzy finder
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
" Vue support
Plug 'posva/vim-vue'
" LaTeX support
Plug 'lervag/vimtex'
" Buffers instead of tabs
Plug 'ap/vim-buftabline'
" Deoplete - autocomplete service
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" clang extension for deoplete
Plug 'deoplete-plugins/deoplete-clang'
" " Some extensions for down the road downloading
" " Multiple cursors
" Plug 'terryma/vim-multiple-cursors'
" " Fuzzy file finder
" Plug 'ctrlpvim/ctrlp.vim'
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

" " autocomplete parentheses and brackets, etc.
" :inoremap ( ()<Esc>i
" :inoremap { {}<Esc>i
" :inoremap [ []<Esc>i

" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1

" Specifies fixers for each language
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier', 'eslint'],
\   'typescript': ['prettier', 'eslint'],
\   'cpp': ['clang-format'],
\   'c': ['clang']
\}

" Linters
let g:ale_linters = { 'cpp': ['clang', 'g++'], 'c': ['clang'] }

" Other stuff
let g:ale_cpp_gcc_options = '-std=c++17 -Wall'
let g:ale_cpp_clang_options = '-std=c++17 -Wall'

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
let g:deoplete#sources#clang#std = {'c': 'c11', 'cpp': 'c++17'}

" Startify settings
let g:startify_bookmarks = ["~/.config/nvim/init.vim", "~/Code/todo.md", "~/.config/sway/config", "~/.zshrc"]

set colorcolumn=80

" Set vimtex flavor
let g:tex_flavor = 'latex'

" Enables fzf in vim
set rtp+=/usr/local/opt/fzf

" Ejs support
au BufNewFile,BufRead *.ejs set filetype=html

" Map gb to list buffers
map gb :ls<CR>:b<Space>
" map g[n, p, d] to go to next, previous, or delete buffer
map gn :bn<CR>
map gp :bp<CR>
map gd :bd<CR>
