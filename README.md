# vim-fuzzy-emoji

A vim plugin to allow for inline fuzzy-completion insertion of emoji.

emoji data is from https://unicode.org/Public/emoji/12.0/emoji-test.txt

### The Plugin

This provides a function you can call from insert mode to bring up an [FZF](https://github.com/junegunn/fzf) pane with all of the Unicode 12 emoji and their official descriptions.

### Requirements

The [basic vim integration](https://github.com/junegunn/fzf#as-vim-plugin) distributed with FZF is required for this plugin to function.

### Mappings

By default the emoji selector is mapped to `<c-x><c-e>`.
You can add the following to your `.vimrc` to disable this:

```vimscript
let g:fuzzy_emoji_map_keys = 0
```

### Todo

The compound emoji and zero-width-joiners and such really do a number on vim's rendering.
Maybe there's some better way of displaying things, but it doesn't bother me enough yet to explore.
