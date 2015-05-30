scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim

let s:V = vital#of('redmine')
let s:HTTP = s:V.import('Web.HTTP')
let s:JSON = s:V.import('Web.JSON')

function! s:headers()
  return { 'X-Redmine-API-Key' : g:redmine_api_key }
endfunction

function! redmine#client#get(path, params)
  let s:url = g:redmine_url . a:path . '.json'
  return s:HTTP.get(s:url, a:params, s:headers())
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
