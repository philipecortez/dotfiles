"style
set number
syntax on
colorscheme neodark

set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize


"Vundle location
set rtp+=~/.vim/bundle/Vundle.vim
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
" Vundle plugins
"

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'rking/ag.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'airblade/vim-gitgutter'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-endwise'
Plugin 'honza/vim-snippets'
Plugin 'elixir-lang/vim-elixir'
Plugin 'slashmili/alchemist.vim'
Plugin 'craigemery/vim-autotag'
Plugin 'KeitaNakamura/neodark.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'pangloss/vim-javascript'
Plugin 'ZoomWin'


" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
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


" vin-javascript

let g:javascript_plugin_flow = 1

