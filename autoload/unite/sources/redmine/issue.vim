scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim

let s:unite_redmine_issue = {
      \ 'name' : 'redmine/issue',
      \ 'default_action' : 'start',
      \ 'default_kind' : 'source',
      \ }

" TODO: implements
function! s:unite_redmine_issue.gather_candidates(args, content)
  echo a:args
  let s:result = redmine#issue#all()
  return map(s:result.issues, "{
        \ 'word' : '[' . v:val.id . ']' . v:val.subject,
        \}")
endfunction

function! unite#sources#redmine#issue#define()
  return s:unite_redmine_issue
endfunction

call unite#define_source(s:unite_redmine_issue)


let &cpo = s:save_cpo
unlet s:save_cpo
