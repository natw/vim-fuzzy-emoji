let s:save_cpo = &cpo
set cpo&vim

let s:data_path = expand('<sfile>:p:h:h') . '/emoji-data.txt'

func! fuzzy_emoji#find()
  let l:opts = {
        \ 'source': 'cat ' . s:data_path,
        \ 'sink*': function('<SID>insertSink'),
        \ }
  call fzf#run(fzf#wrap(l:opts))
  return ''
endfunc

func! s:insertSink(lines)
  if len(a:lines) == 0
    return
  endif
  let l:pick = a:lines[0]
  let l:emoji = l:pick->split(' - ')[0]
  call feedkeys(l:emoji)
endfunc

let &cpo = s:save_cpo
unlet s:save_cpo
