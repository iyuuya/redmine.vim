scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim

let s:V = vital#of('redmine')
let s:HTTP = s:V.import('Web.HTTP')
let s:JSON = s:V.import('Web.JSON')

function! s:headers()
  return { 'X-Redmine-API-Key' : g:redmine_api_key }
endfunction

function! s:gen_url(path)
  return g:redmine_url . a:path . '.json'
endfunction

function! redmine#client#get(path, params)
  let s:url = s:gen_url(a:path)
  return s:HTTP.get(s:url, a:params, s:headers())
endfunction

function! redmine#client#post(path, params)
  " let s:url = s:gen_url(a:path)
endfunction

function! redmine#client#put(path, params)
  " let s:url = s:gen_url(a:path)
endfunction

function! redmine#client#delete(path)
  let s:request = {
        \ 'method' : 'DELETE',
        \ 'url' : s:gen_url(a:path),
        \ 'headers' : s:headers(),
        \ }
  return s:HTTP.request(s:request)
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
