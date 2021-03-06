setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal expandtab
setlocal smarttab

setlocal statusline+=%#warningmsg#
setlocal statusline+=%{SyntasticStatuslineFlag()}
setlocal statusline+=%*
setlocal completeopt-=preview

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
