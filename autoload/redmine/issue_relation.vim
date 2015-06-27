scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim

function! redmine#issue_relation#all(issue)
  return redmine#client#get('/issues/' . a:issue . '/relations', {})
endfunction

function! redmine#issue_relation#show(relation)
  return redmine#client#get('/relations/' . a:relation, {})
endfunction

" [todo] - check relation attributes
"   [todo] - delay option
function! redmine#issue_relation#create(issue, relation)
  let s:params = { 'relation' : a:relation }
  return redmine#client#post('/issues/' . a:issue . '/relations', s:params)
endfunction

function! redmine#issue_relation#delete(id)
  return redmine#client#delete('/relations/' . a:id)
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
