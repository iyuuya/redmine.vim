scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim

function! redmine#issue_category#all(project)
  return redmine#client#get('/projects/' . a:project . '/issue_categories', {})
endfunction

function! redmine#issue_category#show(id)
  return redmine#client#get('/issue_categories/' . a:id, {})
endfunction

" [todo] - check issue_category attributes
" * issue_category
"   + name
"   + assigned_to_id
function! redmine#issue_category#create(project, issue_category)
  let s:params = { 'issue_category' : a:issue_category }

  return redmine#client#post('/projects/' . a:project . '/issue_categories', s:params)
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
