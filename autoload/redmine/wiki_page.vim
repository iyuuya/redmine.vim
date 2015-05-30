scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim

function! redmine#wiki_page#all(project)
  return redmine#client#get('/projects/' . a:project . '/wiki/index', {})
endfunction

function! redmine#wiki_page#show()
endfunction

function! redmine#wiki_page#create()
endfunction

function! redmine#wiki_page#update()
endfunction

function! redmine#wiki_page#delete()
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
