"general config

filetype plugin indent on    " required

set number
set numberwidth=5
syntax on
set nowrap
let mapleader = "\<Space>"
set clipboard=unnamed

set nocompatible              " be iMproved, required
filetype off                  " required

set backspace=2
set nobackup
set nowritebackup
set noswapfile
set history=50
set ruler
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set expandtab
set autoindent
set cursorline
set scrolloff=5


"
" Plug plugins
"
call plug#begin('~/.config/nvim/plugged')

" UI

Plug 'trevordmiller/nova-vim'
Plug 'bling/vim-airline'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'junegunn/goyo.vim'

" Navigation

Plug 'scrooloose/nerdtree'
Plug 'rking/ag.vim'
Plug 'ctrlpvim/ctrlp.vim'

" Editing

Plug 'scrooloose/nerdcommenter'
Plug 'honza/vim-snippets'
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-scripts/ZoomWin'
Plug 'craigemery/vim-autotag'
Plug 'bronson/vim-trailing-whitespace'

" Linting

Plug 'w0rp/ale'

" Autocomplete

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'mhartington/nvim-typescript'
Plug 'zchee/deoplete-jedi'
Plug 'carlitux/deoplete-ternjs'
Plug 'steelsojka/deoplete-flow', { 'branch': 'pass-filename-to-autocomplete' }

" Git

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'


" Ruby and Rails

Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-endwise'

" Elixir

Plug 'elixir-lang/vim-elixir'
Plug 'slashmili/alchemist.vim'

" JS
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" Html

Plug 'othree/html5.vim'

" Css

Plug 'hail2u/vim-css3-syntax'

" Sass

Plug 'cakebaker/scss-syntax.vim'

call plug#end()

"
" terminal mode
"

tnoremap <Esc> <C-\><C-n>

"
" airline
"

" Configure the Tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#fnamemod = ':t'

"let g:airline#extensions#neomake#enabled = 1
let g:airline_skip_empty_sections = 1


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

let g:ag_working_path_mode="r"

"
" nerdtree config
"
nnoremap <silent> \ :NERDTreeToggle<CR>


"
" ale
"

let g:ale_linters = {
      \   'javascript': ['eslint', 'flow'],
      \   'html': []
      \}

let g:ale_fixers = {
      \   'javascript': ['eslint']
      \}

let g:ale_sign_error = '✖'
hi ALEErrorSign guifg=#DF8C8C
let g:ale_sign_warning = '⚠'
hi ALEWarningSign guifg=#F2C38F

"
" deoplete
"

let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_debug = 1
let g:deoplete#enable_profile = 1
call deoplete#enable_logging('DEBUG', '/home/philipe/deoplete.log')

let g:deoplete#ignore_sources = {}
let g:deoplete#ignore_sources.javascript = ['member']

" Map `<tab>` to Deoplete
inoremap <silent><expr> <TAB>
  \ pumvisible()
  \ ? "\<C-n>"
  \ : <SID>check_back_space()
     \ ? "\<TAB>"
     \ : deoplete#mappings#manual_complete()
inoremap <silent><expr> <S-Tab>
  \ pumvisible() ? '<C-p>' : ''

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

let g:deoplete#sources#flow#flow_bin = 'flow'


"
" flow
"

" Grab the local Flow bin by default, fall back to global
function! StrTrim(txt)
	return substitute(a:txt, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
endfunction

let g:flow_path = StrTrim(system('PATH=$(npm bin):$PATH && which flow'))

if g:flow_path != 'flow not found'
	let g:deoplete#sources#flow#flow_bin = g:flow_path
endif

"
" pangloss/javascript
"

let g:javascript_plugin_flow = 1

"
" ternjs
"

let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = '0'  " This do disable full signature type on autocomplete

"Add extra filetypes
let g:tern#filetypes = [
			\ 'jsx',
			\ 'javascript.jsx',
			\ ]

let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]

"
" CtrlP config
"

set wildignore+=*/tmp/*,*/node_modules/*,*.so,*.swp,*.zip     " MacOSX/Linux

" theme

set background=dark
colorscheme nova

" dark0 + gray
let g:terminal_color_0 = "#282828"
let g:terminal_color_8 = "#928374"

" neurtral_red + bright_red
let g:terminal_color_1 = "#cc241d"
let g:terminal_color_9 = "#fb4934"

" neutral_green + bright_green
let g:terminal_color_2 = "#98971a"
let g:terminal_color_10 = "#b8bb26"

" neutral_yellow + bright_yellow
let g:terminal_color_3 = "#d79921"
let g:terminal_color_11 = "#fabd2f"

" neutral_blue + bright_blue
let g:terminal_color_4 = "#458588"
let g:terminal_color_12 = "#83a598"

" neutral_purple + bright_purple
let g:terminal_color_5 = "#b16286"
let g:terminal_color_13 = "#d3869b"

" neutral_aqua + faded_aqua
let g:terminal_color_6 = "#689d6a"
let g:terminal_color_14 = "#8ec07c"

" light4 + light1
let g:terminal_color_7 = "#a89984"
let g:terminal_color_15 = "#ebdbb2"
