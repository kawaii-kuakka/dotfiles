" Use async completion.
let g:monster#completion#rcodetools#backend = "async_rct_complete"

" Work with neocomplete.vim
let g:neocomplete#sources#omni#input_patterns = {
\   "ruby" : '[^. *\t]\.\w*\|\h\w*::',
\}
