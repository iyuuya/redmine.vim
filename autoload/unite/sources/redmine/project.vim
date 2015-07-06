scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim

let s:unite_redmine_project = {
      \ 'name' : 'redmine/project',
      \ 'default_action' : 'start',
      \ 'default_kind' : 'source',
      \ }

" TODO: implements
function! s:unite_redmine_project.gather_candidates(args, content)
  let s:result = redmine#project#all()
  return map(s:result.projects, "{
        \ 'word' : '[' . v:val.id . ']' . v:val.name . ' - ' . v:val.description,
        \ 'action__source_name' : 'redmine/project/actions',
        \ 'action__source_args' : [v:val.id],
        \}")
endfunction

function! unite#sources#redmine#project#define()
  return s:unite_redmine_project
endfunction

call unite#define_source(s:unite_redmine_project)

let &cpo = s:save_cpo
unlet s:save_cpo
