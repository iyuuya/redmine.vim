scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim

" [memo] - include: rackers, issue_categories, enabled_modules
function! redmine#project#all(...)
  if a:0 >= 1
    let s:params = { 'include' : join(a:000, ',') }
  else
    let s:params = {}
  end

  return redmine#client#get('/projects', a:params)
endfunction

" [memo] - include: trackers, issue_categories, enabled_modules
function! redmine#project#show(id, ...)
  if a:0 >= 1
    let s:params = { 'include' : join(a:000, ',')}
  else
    let s:params = {}
  end

  return redmine#client#get('/projects/' . a:id, a:params)
endfunction

" [todo] - check project attributes
"
" * project
"   + name (required)
"   + identifier (required)
"   + description
"   + homepage
"   + is_public
"   + parent_id
"   + inherit_members
"   + tracker_ids
"   + enabled_module_names
function! redmine#project#create(project)
  let s:params = { 'project' : a:project }

  return redmine#client#post('/projects', s:params)
endfunction

function! redmine#project#update(id, project)
  let s:params = { 'project' : a:project }

  return redmine#client#post('/projects' . a:id, s:params)
endfunction

function! redmine#project#delete(id)
  return redmine#client#delete('/projects/' . a:id)
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
