scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim

let s:unite_redmine = {
      \ 'name' : 'redmine',
      \ 'default_action' : 'start',
      \ 'default_kind' : 'source',
      \ }
let s:subsources = [
      \ 'project',
      \ 'wiki',
      \ ]
"      \ 'issue',
"      \ 'wiki',

function! s:unite_redmine.gather_candidates(args, content)
  return map(s:subsources, "{
        \ 'word' : v:val,
        \ 'action__source_name' : 'redmine/' . v:val,
        \ 'action__source_args' : []
        \}")
endfunction

function! unite#sources#redmine#define()
  return s:unite_redmine
endfunction

call unite#define_source(s:unite_redmine)

" FIXME: slow....
for subsource in s:subsources
  call eval("unite#sources#redmine#". subsource ."#define()")
endfor

let &cpo = s:save_cpo
unlet s:save_cpo
