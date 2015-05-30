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

function! redmine#project#create()
endfunction

function! redmine#project#update()
endfunction

function! redmine#project#delete()
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
