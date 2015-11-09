"
" General
"

" Disable default mappings
let g:EasyMotion_do_mapping = 0

" Enable case insensitive search
let g:EasyMotion_smartcase = 1

"
" Key mappings
"

" Move to a word with 2 chars
nmap s <Plug>(easymotion-s2)
omap s <Plug>(easymotion-s2)
xmap s <Plug>(easymotion-s2)

" Move to a char on a line
nmap f <Plug>(easymotion-bd-fl)
omap f <Plug>(easymotion-bd-fl)
xmap f <Plug>(easymotion-bd-fl)

" Move to a line
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
