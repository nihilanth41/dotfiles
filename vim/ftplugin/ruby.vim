compiler ruby
setlocal makeprg=ruby\ -wc\ %
map <F9> :w<CR>:!ruby -c %<CR>
set ts=2 sw=2 expandtab
