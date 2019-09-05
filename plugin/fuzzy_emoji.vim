if exists('g:loaded_fuzzy_emoji')
  finish
endif

inoremap <silent> <plug>(fuzzy-find-emoji) <c-r>=fuzzy_emoji#find()<cr>

imap <c-x><c-e> <plug>(fuzzy-find-emoji)

let g:loaded_fuzzy_emoji = 1
