scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim

function! redmine#time_entry#all()
  return redmine#client#get('/time_entries', {})
endfunction

function! redmine#time_entry#show(id)
  return redmine#client#get('/time_entries/' . a:id, {})
endfunction

" [todo] - check time entry attributes
" * time_entry
"   + issue_id or project_id (only one is required)
"   + spent_on
"   + hours (required)
"   + activity_id
"   + comments
function! redmine#time_entry#create(time_entry)
  let s:params = { 'time_entry' : a:time_entry }

  return redmine#client#post('/time_entries', s:params)
endfunction

function! redmine#time_entry#update()
endfunction

function! redmine#time_entry#delete(id)
  return redmine#client#delete('/time_entries/' . a:id)
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
