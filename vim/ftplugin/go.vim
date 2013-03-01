setlocal tabstop=8
setlocal softtabstop=8
setlocal shiftwidth=8
setlocal nolist
" run formatting on save
au BufWritePre *.go Fmt
