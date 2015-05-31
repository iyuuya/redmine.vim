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

" [todo] - check issue attributes
" [todo] - attachments
"
" * issue
"   + project_id
"   + tracker_id
"   + status_id
"   + priority_id
"   + subject
"   + description
"   + category_id
"   + fixed_version_id
"   + assigned_to_id
"   + parent_issue_id
"   + custom_fields
"   + watcher_user_ids
"   + is_private
"   + estimated_hours
function! redmine#issue#create(issue)
  let s:params = { 'issue' : a:issue }

  return redmine#client#post('/issues', s:params)
endfunction

function! redmine#issue#update(id, issue)
  let s:params = { 'issue' : a:issue }

  return redmine#client#put('/issues' . a:id, s:params)
endfunction

function! redmine#issue#delete(id)
  return redmine#client#delete('/issues/' . a:id)
endfunction

function! redmine#issue#add_watcher(id, user_id)
  return redmine#client#post('/issues/' . a:id . '/watchers', { 'user_id': a:user_id })
endfunction

function! redmine#issue#delete_watcher(id, user_id)
  return redmine#client#delete('/issues/' . a:id . '/watchers/' . a:user_id)
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
