scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim

function! unite#kinds#redmine_wiki_page#define()
  return s:kind
endfunction

let s:kind = {
      \ 'name' : 'redmine_wiki_page',
      \ 'default_action' : 'open',
      \ 'action_table' : {},
      \}

let s:kind.action_table.open = {
      \ 'description' : 'open',
      \ }

function! s:kind.action_table.open.func(candidates)
  vnew ++ft=markdown test.md
  normal i<C-r>=redmine#wiki_page(a:candidates.action__project_id, a:candidates.action__wiki_page)
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
