scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim

function! redmine#wiki_page#all(project)
  return redmine#client#get('/projects/' . a:project . '/wiki/index', {})
endfunction

" [memo] - attachments
function! redmine#wiki_page#show(project, page, ...)
  if a:0 >= 1
    let s:params = { 'include': join(a:000, ',') }
  else
    let s:params = {}
  endif

  return redmine#client#get('/projects/' . a:project . '/wiki/' . a:page, s:params)
endfunction

" [memo] - attachments
function! redmine#wiki_page#show_with_version(project, page, version, ...)
  if a:0 >= 1
    let s:params = { 'include': join(a:000, ',') }
  else
    let s:params = {}
  endif

  return redmine#client#get('/projects/' . a:project . '/wiki/' . a:page . '/' . a:version, s:params)
endfunction

" [todo] - comments, version
function! redmine#wiki_page#create_or_update(project, page, text)
  let s:params = {
        \ 'wiki_page' : {
        \   'text' : a:text,
        \   }
        \ }
  return redmine#client#put('/projects/' . a:project . '/wiki/' . a:page , s:params)
endfunction

function! redmine#wiki_page#delete(project, page)
  return redmine#client#delete('/projects/' . a:project . '/wiki/' . a:page)
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
