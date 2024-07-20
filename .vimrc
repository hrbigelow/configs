syntax on

set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set relativenumber

set colorcolumn=90
highlight colorColumn ctermbg=0 guibg=lightgrey

set modeline
source ~/.vim/ftplugin/python.vim
"" set textwidth=90
"" set clipboard=unnamedplus
"" set ruler

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'habamax/vim-polar'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'https://github.com/kien/ctrlp.vim.git'
"" Plug 'https://github.com/Valloric/YouCompleteMe.git' 
Plug 'mbbill/undotree'
Plug 'https://github.com/udalov/kotlin-vim.git'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'https://github.com/junegunn/fzf.vim'
Plug 'https://github.com/lifepillar/pgsql.vim.git'

"" Plug 'cjuniet/clang-format.vim'
"" Plug 'rhysd/vim-clang-format.vim'

Plug 'evanleck/vim-svelte'
Plug 'pangloss/vim-javascript'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'tikhomirov/vim-glsl'
Plug 'HerringtonDarkholme/yats.vim'
"" or Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'rhysd/vim-llvm'
Plug 'ekalinin/Dockerfile.vim'

Plug 'cespare/vim-toml', { 'branch': 'main' }

call plug#end()


colorscheme gruvbox
set termguicolors
"" colorscheme polar
"" let g:polar_transp_bg = v:true
set background=dark

if executable('rg')
    let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let mapleader = " "
let g:netrw_browser_split=2
let g:netrw_banner=0
let g:netrw_winsize = 25

let g:ctrlp_use_caching = 0

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>n :bn<CR>
nnoremap <leader>p :bp<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <Leader>ps :Rg<SPACE>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <Leader>gf :YcmCompleter FixIt<CR>

"" Plug 'bfrg/vim-cpp-modern'
autocmd! BufNewFile,BufRead *.vs,*.fs set ft=glsl

augroup markdown
    au!
    au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END


