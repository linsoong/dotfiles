set nocompatible              " be iMproved, required
filetype off                  " required
syntax enable
colorscheme molokai

set viminfo='1000,

"get rid of tabs, they're the devils work
set autoindent
set expandtab
set smarttab
set tabstop=2
set shiftwidth=2

"set title to show in console title bar
set title
""do not keep a backup file!
set nobackup

set cindent
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s
set nu
set ruler
set showcmd

if &term=="xterm"
  set t_co=8
  set t_sb=^[[4%dm
  set t_sf=^[[3%dm
endif

set cursorline
set cursorcolumn

set hlsearch
set background=dark
set nowb
set noswapfile

set magic

set hid
set incsearch
set ignorecase
set smartcase

set mouse=a

set laststatus=2
set t_co=256

if $term == "xterm-256color" || $term == "screen-256color" || $colorterm == "gnome-terminal"
  set t_co=256
endif

if !has('gui_running')
  set t_Co=256
endif

"
""set gvim GUI to English
set langmenu=en_US
let $LANG= 'en_US'
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugin to install
" json formator, use gqaj to pretty print
Plugin 'tpope/vim-jdaddy'

Plugin 'itchyny/lightline.vim'

" git plugin
Plugin 'itchyny/vim-gitbranch'
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }

"
Plugin 'luochen1990/rainbow'
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
