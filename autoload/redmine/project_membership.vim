scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim

function! redmine#project_membership#delete(id)
  return redmine#client#delete('/memberships/' . a:id)
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
