scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim

let s:V = vital#of('redmine')
let s:HTTP = s:V.import('Web.HTTP')
let s:JSON = s:V.import('Web.JSON')

function! s:headers()
  return { 'X-Redmine-API-Key' : g:redmine_api_key }
endfunction

" [memo] - include: rackers, issue_categories, enabled_modules
function! redmine#project#all(...)
  let s:url = g:redmine_url . '/projects.json'
  if a:0 >= 1
    let s:params = { 'include' : join(a:000, ',') }
  else
    let s:params = {}
  end

  return s:HTTP.get(s:url, s:params, s:headers())
endfunction

function! redmine#project#show()
endfunction

function! redmine#project#create()
endfunction

function! redmine#project#update()
endfunction

function! redmine#project#delete()
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
