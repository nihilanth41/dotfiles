" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" 
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" General "{{{
set nocompatible  	" disable vi compatibility.(Vundle req)
filetype off            " required (Vundle req)
set history=256  	" Number of things to remember in history.
set timeoutlen=250  	" Time to wait after ESC (default causes an annoying delay)
" "}}}

" Formatting "{{{
set fo-=r               " Do not automatically insert a comment leader after an enter
set fo-=t               " Do no auto-wrap text using textwidth (does not apply to comments)

set nowrap
set textwidth=0		" Don't wrap lines by default

set backspace=indent,eol,start	" more powerful backspacing

set tabstop=8           " Set the default tabstop
set softtabstop=8
set shiftwidth=8        " Set the default shift width for indents
set expandtab           " Make tabs into spaces (set by tabstop)
set smarttab            " Smarter tab levels

set autoindent
set cindent
set cinoptions=:s,ps,ts,cs
set cinwords=if,else,while,do,for,switch,cas

syntax on              		      " enable syntax
filetype plugin indent on             " Automatically detect file types.
" "}}}

