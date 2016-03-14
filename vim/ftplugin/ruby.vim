compiler ruby
setlocal makeprg=ruby\ -wc\ %
map <F9> :w<CR>:!ruby -c %<CR>
