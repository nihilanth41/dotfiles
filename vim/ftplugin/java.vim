setlocal makeprg=mvn\ compile\ -q\ -f\ pom.xml
set errorformat=\[ERROR]\ %f:[%l\\,%v]\ %m
nnoremap <F9> :make<CR>

set ts=2		" (ts) width (in spaces) that one <tab> is displayed as
set shiftwidth=2 	" (sw) width (in spaces) used for each autointend (and <<, >>)
set expandtab 		" (et) expand tabs into spaces 
