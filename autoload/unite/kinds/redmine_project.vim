scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim

function! unite#kinds#redmine_project#define()
  return s:kind
endfunction

let s:kind = {
      \ 'name' : 'redmine_project',
      \ 'default_action' : 'show',
      \ 'action_table' : {},
      \}

let s:kind.action_table.show = {
      \ 'description' : 'show the project information',
      \ }

function! s:kind.action_table.show.func(candidates)
  echo redmine#project#show(a:candidates.action__project_id)
endfunction

let s:kind.action_table.wiki_all = {
      \ 'description' : 'listing wiki pages of project',
      \ }

function! s:kind.action_table.wiki_all.func(candidates)
  execute 'Unite redmine/wiki:' . a:candidates.action__project_id
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
