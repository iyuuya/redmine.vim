scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim

function! redmine#issue_relation#all(issue)
  return redmine#client#get('/issues/' . a:issue . '/relations', {})
endfunction

function! redmine#issue_relation#show(relation)
  return redmine#client#get('/relations/' . a:relation, {})
endfunction

function! redmine#issue_relation#delete(id)
  return redmine#client#delete('/relations/' . a:id)
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
