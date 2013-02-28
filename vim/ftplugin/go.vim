setlocal tabstop=8
setlocal softtabstop=8
setlocal shiftwidth=8
" run formatting on save
au BufWritePre *.go Fmt
" hide hidden chars
set nolist
