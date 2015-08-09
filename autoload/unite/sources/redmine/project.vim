scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim

let s:V = vital#of('redmine')
let s:String = s:V.import('Data.String')

let s:unite_redmine_project = { 'name' : 'redmine/project' }

function! s:unite_redmine_project.gather_candidates(args, content)
  let s:projects = []
  let s:total_count = 1
  let s:offset = 0

  while s:offset < s:total_count
    let s:result = redmine#project#all({'limit' : 100, 'offset' : s:offset})
    let s:total_count = s:result.total_count
    call extend(s:projects, s:result.projects)
    let s:offset += len(s:result.projects)
  endwhile

  call sort(s:projects, "s:compare_project_name")

  return map(s:projects, "{
        \ 'word' : v:val.name . ' - ' . v:val.description,
        \ 'source' : 'redmine/project',
        \ 'kind' : 'redmine_project',
        \ 'action__project_id' : v:val.name,
        \}")
endfunction

function! unite#sources#redmine#project#define()
  return s:unite_redmine_project
endfunction

function! s:compare_project_name(v1, v2)
  return a:v1 == a:v2 ? 0 : a:v1.name > a:v2.name ? 1 : -1
endfunction

call unite#define_source(s:unite_redmine_project)

let &cpo = s:save_cpo
unlet s:save_cpo
