"style
set number
syntax on
set nowrap

set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize


"Vundle location
let mapleader = "\<Space>"
set clipboard=unnamed

"
" fugitive vim config
"

" open the output of git blame
nnoremap <silent> <leader>gb :Gblame<CR>

" open the output of git diff
nnoremap <silent> <leader>gd :Gdiff<CR>
"
" open the output of git status
nnoremap <silent> <leader>gs :Gstatus<CR>

"
" Ag config
"

nnoremap <leader>a :Ag! "<cword>"<CR>

"
" Plug plugins
"
call plug#begin('~/.config/nvim/plugged')

Plug 'VundleVim/Vundle.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'rking/ag.vim'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'airblade/vim-gitgutter'
Plug 'bronson/vim-trailing-whitespace'
Plug 'bling/vim-airline'
Plug 'tpope/vim-endwise'
Plug 'honza/vim-snippets'
Plug 'elixir-lang/vim-elixir'
Plug 'slashmili/alchemist.vim'
Plug 'craigemery/vim-autotag'
Plug 'KeitaNakamura/neodark.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'vim-scripts/ZoomWin'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
call plug#end()

filetype plugin indent on    " required

"set termguicolors
"
" nerdtree config
"
nnoremap <silent> \ :NERDTreeToggle<CR>

"
" Ag config
"
let g:ag_working_path_mode="r"

"
" Indent settings
"
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

set cursorline

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" CtrlP config

set wildignore+=*/tmp/*,*/node_modules/*,*.so,*.swp,*.zip     " MacOSX/Linux

" vim-javascript

let g:javascript_plugin_flow = 1

"
" deoplete
"

" theme
colorscheme neodark
