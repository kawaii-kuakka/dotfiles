"
" General
"

" Use start insert by default.
call unite#custom#profile('default', 'context', {
\   'start_insert' : 1
\ })

"
" Grep
"

nnoremap <silent> <space>ug :<C-u>call <SID>unite_smart_grep()<CR>

" Use grep/git in a git repo
function! s:unite_smart_grep()
  if unite#sources#grep_git#is_available()
    Unite grep/git:. -buffer-name=search-buffer
  else
    Unite grep:. -buffer-name=search-buffer
  endif
endfunction
