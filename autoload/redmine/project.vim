scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim

let s:V = vital#of('redmine')
let s:HTTP = s:V.import('Web.HTTP')
let s:JSON = s:V.import('Web.JSON')

function! redmine#project#all()
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
