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

" [todo] - check issue attributes
"
" * user
"   + login (required)
"   + password
"   + firstname (required)
"   + lastname (required)
"   + mail (required)
"   + auth_source_id
"   + mail_notification
"   + must_change_passwd
function! redmine#user#create(user)
  let s:params = { 'user' : a:user }

  return redmine#client#post('/users', s:params)
endfunction

function! redmine#user#update(id, user)
  let s:params = { 'user' : a:user }

  return redmine#client#put('/users' . a:id, s:params)
endfunction

function! redmine#user#delete(id)
  return redmine#client#delete('/users/' . a:id)
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
