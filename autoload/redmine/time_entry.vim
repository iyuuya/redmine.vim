scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim

function! redmine#time_entry#all()
  return redmine#client#get('/time_entries', {})
endfunction

function! redmine#time_entry#show(id)
  return redmine#client#get('/time_entries/' . a:id, {})
endfunction

function! redmine#time_entry#create()
endfunction

function! redmine#time_entry#update()
endfunction

function! redmine#time_entry#delete(id)
  return redmine#client#delete('/time_entries/' . a:id)
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
