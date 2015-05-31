scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim

" [todo] - optional filters
function! redmine#user#all(...)
  return redmine#client#get('/users', {})
endfunction

" [memo] - include: memberships, groups
function! redmine#user#show(id, ...)
  if a:0 >= 1
    let s:params = { 'include' : join(a:000, ',')}
  else
    let s:params = {}
  end

  return redmine#client#get('/users/' . a:id, s:params)
endfunction

function! redmine#user#create()
endfunction

function! redmine#user#update()
endfunction

function! redmine#user#delete(id)
  return redmine#client#delete('/users/' . a:id)
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
