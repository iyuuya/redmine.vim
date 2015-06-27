scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim

function! redmine#issue_category#all(project)
  return redmine#client#get('/projects/' . a:project . '/issue_categories', {})
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
