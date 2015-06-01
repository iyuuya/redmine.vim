scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim

function! redmine#issue_relations#delete(id)
  return redmine#client#delete('/relations/' . a:id)
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
