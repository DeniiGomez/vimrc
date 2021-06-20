syntax on
  
"set nolist
set rnu
set nu
set numberwidth=1
set mouse=a
set clipboard=unnamed
set showcmd
set ruler
set cursorline
set showmatch
set sw=2

" Helps force plug-ins to load correctly when it is turned back on below.
filetype off

" For plug-ins to load correctly.
filetype plugin indent on

" Automatically wrap text that extends beyond the screen length.
set wrap


" Encoding
set encoding=utf-8
  
" Uncomment below to set the max textwidth. Use a value corresponding to the width of your screen.
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set laststatus=2
set noshowmode
set noshiftround

set viminfo='100,<9999,s100
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}

" theme
set termguicolors
packadd! dracula
syntax enable
colorscheme dracula

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" plugins
call plug#begin('~/.vim/plugged')
  Plug 'pangloss/vim-javascript'    " JavaScript support
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'leafgarland/typescript-vim' " TypeScript syntax
  Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }
  Plug 'vim-airline/vim-airline'
  Plug 'mattn/emmet-vim'
  Plug 'easymotion/vim-easymotion'
  Plug 'scrooloose/nerdtree'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'Yggdroot/indentLine'
  Plug 'mg979/vim-visual-multi', {'branch': 'master'}
  Plug 'elzr/vim-json'
  Plug 'scrooloose/syntastic'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'tpope/vim-fugitive'
call plug#end()

let g:coc_global_extensions = [ 'coc-tsserver' ]
let g:airline_powerline_fonts = 1

let g:indentLine_char = '▏'
let g:indentLine_color_term = 239
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

""inoremap ( ()<Esc>i
""inoremap { {}<Esc>i
""inoremap {<CR> {<CR>}<Esc>o
""inoremap [ []<Esc>i
inoremap < <><Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
inoremap ` ``<Esc>i

" shortcuts
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
:imap ii <Esc>

let mapleader=" "
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <leader>gs :CocSearch
nmap <leader>fs :Files<CR>
nmap <leader>sp :split<CR>
nma <leader>vsp :vsplit<CR>
