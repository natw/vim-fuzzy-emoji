if exists('g:loaded_fuzzy_emoji')
  finish
endif

inoremap <silent> <plug>(fuzzy-find-emoji) <c-r>=fuzzy_emoji#find()<cr>

if !exists('g:fuzzy_emoji_map_keys')
    let g:fuzzy_emoji_map_keys = 1
endif

if g:fuzzy_emoji_map_keys
  imap <c-x><c-e> <plug>(fuzzy-find-emoji)
endif

let g:loaded_fuzzy_emoji = 1
