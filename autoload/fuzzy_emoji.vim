let s:save_cpo = &cpo
set cpo&vim

let s:data_path = expand('<sfile>:p:h:h') . '/emoji-test.txt'
let s:emoji_inited = 0

func! fuzzy_emoji#find()
  call fzf#vim#complete('echo foo\nbar')
endfunc

let &cpo = s:save_cpo
unlet s:save_cpo

