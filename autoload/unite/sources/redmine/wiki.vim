scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim

let s:unite_redmine_wiki = { 'name' : 'redmine/wiki' }

function! s:unite_redmine_wiki.gather_candidates(args, content)
  let s:wiki_pages = redmine#wiki_page#all(a:args[0]).wiki_pages

  return map(s:wiki_pages, "{
        \ 'word' : v:val.title,
        \ 'source' : 'redmine/wiki_page',
        \ 'kind' : 'redmine_wikl_page',
        \ 'action__project_id' : a:args[0],
        \ 'action__wiki_title' : v:val.title,
        \}")
endfunction

function! unite#sources#redmine#wiki#define()
  return s:unite_redmine_wiki
endfunction

call unite#define_source(s:unite_redmine_wiki)

let &cpo = s:save_cpo
unlet s:save_cpo
