scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim

" [todo] - parameters
" [todo] - optional filters
function! redmine#issue#all(...)
  let s:params = {}

  return redmine#client#get('/issues', s:params)
endfunction

function! redmine#issue#show()
endfunction

function! redmine#issue#create()
endfunction

function! redmine#issue#update()
endfunction

function! redmine#issue#delete()
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
