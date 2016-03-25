set nocompatible
syntax enable
colorscheme molokai

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

"
""set gvim GUI to English
set langmenu=en_US
let $LANG= 'en_US'
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
