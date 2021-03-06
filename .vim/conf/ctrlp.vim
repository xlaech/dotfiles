set runtimepath^=~/.vim/bundle/ctrlp.vim
:nnoremap <C-P> :CtrlP
let g:ctrlp_cmd = 'CtrlP'
"let g:ctrlp_match_window = 'order:ttb'
let g:ctrlp_match_window = 'results:100'
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
