"sensible.vim - Defaults everyone can agree on


" Maintainer:   Tim Pope <http://tpo.pe/>
" Version:      1.0

set nocompatible              " be iMproved, required
filetype off                  " required

if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

filetype plugin indent on   

if exists('g:loaded_sensible') || &compatible
  finish
else
  let g:loaded_sensible = 1
endif

if has('autocmd')
  filetype plugin indent on
endif
if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

" Use :help 'option' to see the documentation for the given option.
set number                              " Line numbers 
set relativenumber
set autoindent                          " Get indent level from current line 
set backspace=indent,eol,start          " Make backspace key work over line breaks, indentation
set complete-=i                         " Don't search included files for autocompletion words (tends to search system libraries e.g. stdlib) 
set showmatch                           " When inserting a closing bracket move the cursor to previous matching bracket for fraction of a second
set matchtime=10                        " Showmatch time where n is in 10ths of a second 
set smarttab                            " 

set nrformats-=octal
set shiftround

set ttimeout                            
set ttimeoutlen=50

set incsearch                           " Start searching when the first character is entered
set hlsearch                            " Search highlighting
" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

set laststatus=2
set ruler                               " Display status line (filename, row, column)
set showcmd                             
set wildmenu

if !&scrolloff
  set scrolloff=1
endif
if !&sidescrolloff
  set sidescrolloff=5
endif
set display+=lastline

if &encoding ==# 'latin1' && has('gui_running')
  set encoding=utf-8
endif

if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
  if !has('win32') && (&termencoding ==# 'utf-8' || &encoding ==# 'utf-8')
    let &listchars = "tab:\u21e5 ,trail:\u2423,extends:\u21c9,precedes:\u21c7,nbsp:\u00b7"
  endif
endif

set autoread
set fileformats+=mac

if &history < 1000
  set history=1000
endif
if &tabpagemax < 50
  set tabpagemax=50
endif
if !empty(&viminfo)
  set viminfo^=!
endif

" Allow color schemes to do bright colors without forcing bold.
if &t_Co == 8 && $TERM !~# '^linux'
  set t_Co=16
endif

" Load matchit.vim, but only if the user hasn't installed a newer version.
if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''
  runtime! macros/matchit.vim
endif

inoremap <C-U> <C-G>u<C-U>
nnoremap & :&&<CR>
xnoremap & :&&<CR>
" Make Y consistent with C and D.  See :help Y.
nnoremap Y y$

" Solarized 
"if has('gui_running')
"  set background=light
"else
"  set background=dark
"endif
"colors solarized 
set background=dark
colors vividchalk

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

:nnoremap <F5> :buffers<CR>:buffer<Space> 

" For ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Use silversearcher-ag if present 
if executable('ag')
  " Use ag over grep 
  set grepprg=ag\ --nogroup\ --nocolor
  " Use ag in CtrlP for listing files. Faster & uses .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" Associate .tpl w/ smarty 
au BufRead,BufNewFile *.tpl set filetype=smarty

if exists('$TMUX')
  function! TmuxOrSplitSwitch(wincmd, tmuxdir)
    let previous_winnr = winnr()
    silent! execute "wincmd " . a:wincmd
    if previous_winnr == winnr()
      call system("tmux select-pane -" . a:tmuxdir)
      redraw!
    endif
  endfunction

  let previous_title = substitute(system("tmux display-message -p '#{pane_title}'"), '\n', '', '')
  let &t_ti = "\<Esc>]2;vim\<Esc>\\" . &t_ti
  let &t_te = "\<Esc>]2;". previous_title . "\<Esc>\\" . &t_te

  nnoremap <silent> <C-h> :call TmuxOrSplitSwitch('h', 'L')<cr>
  nnoremap <silent> <C-j> :call TmuxOrSplitSwitch('j', 'D')<cr>
  nnoremap <silent> <C-k> :call TmuxOrSplitSwitch('k', 'U')<cr>
  nnoremap <silent> <C-l> :call TmuxOrSplitSwitch('l', 'R')<cr>
else
  map <C-h> <C-w>h
  map <C-j> <C-w>j
  map <C-k> <C-w>k
  map <C-l> <C-w>l
endif

nnoremap ,v <C-w>v
nnoremap ,h <C-w>s
nnoremap ,, <C-w>w
nnoremap ,c <C-w>c

nnoremap <silent> <C-s> :<C-u>update<CR>

map ; :
noremap ;; ;

" Allow saving of files with sudo if/when vim is run without sudo 
cmap w!! w !sudo tee > /dev/null %

" vim:set ft=vim et sw=2:

