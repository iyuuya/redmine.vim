scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim

let s:unite_redmine_project_actions = {
      \ 'name' : 'redmine/project/actions',
      \ 'default_action' : 'start',
      \ 'default_kind' : 'source',
      \ }
let s:subsources = [
      \ 'issue',
      \ 'wiki',
      \ ]

function! s:unite_redmine_project_actions.gather_candidates(args, content)
  return map(s:subsources, "{
        \ 'word' : v:val,
        \ 'action__source_name' : 'redmine/' . v:val,
        \ 'action__source_args' : a:args
        \}")
endfunction

function! unite#sources#redmine#project#define()
  return s:unite_redmine_project_actions
endfunction

call unite#define_source(s:unite_redmine_project_actions)

let &cpo = s:save_cpo
unlet s:save_cpo
