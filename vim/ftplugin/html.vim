setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2
setlocal formatoptions-=t
" disable highlight of long lines
au BufWinEnter * call matchdelete(w:longline)
