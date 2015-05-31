scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim

" [todo] - parameters
" [todo] - optional filters
function! redmine#issue#all(...)
  let s:params = {}

  return redmine#client#get('/issues', s:params)
endfunction

" [memo] - include: children, attachments, relations, changesets, journals, watchers
function! redmine#issue#show(id, ...)
  if a:0 >= 1
    let s:params = { 'include' : join(a:000, ',')}
  else
    let s:params = {}
  end

  return redmine#client#get('/issues/' . a:id, s:params)
endfunction

function! redmine#issue#create()
endfunction

function! redmine#issue#update()
endfunction

function! redmine#issue#delete(id)
  return redmine#client#delete('/issues/' . a:id)
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
