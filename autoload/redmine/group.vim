scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim

function! redmine#group#delete(id)
  return redmine#client#delete('/groups/' . a:id)
endfunction

function! redmine#group#delete_user(id, user_id)
  return redmine#client#delete('/groups/' . a:id . '/users/' . a:user_id)
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
