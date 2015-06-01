scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim

function! redmine#version#delete(id)
  return redmine#client#delete('/versions/' . a:id)
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
