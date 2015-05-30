scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim

let s:V = vital#of('redmine')
let s:HTTP = s:V.import('Web.HTTP')
let s:JSON = s:V.import('Web.JSON')

function! s:headers()
  return { 'X-Redmine-API-Key' : g:redmine_api_key }
endfunction

" [todo] - parameters
" [todo] - optional filters
function! redmine#issue#all(...)
  let s:url = g:redmine_url . '/issues.json'
  let s:params = {}

  return s:HTTP.get(s:url, s:params, s:headers())
endfunction

function! redmine#issue#show()
endfunction

function! redmine#issue#create()
endfunction

function! redmine#issue#update()
endfunction

function! redmine#issue#delete()
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
