" Table mode
let b:table_mode_corner='|'
let b:table_mode_corner_corner='|'
let b:table_mode_header_fillchar='-'
let g:table_mode_align_char=':'

let g:vim_markdown_folding_disabled=1
let g:vim_markdown_conceal=0
let g:vim_markdown_anchorexpr="'<<'.v:anchor.'>>'"

" Spell checking
set spell spelllang=en_us
set textwidth=72
set colorcolumn=72

" Does not highlight conceal
highlight Conceal ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE

" Make `gf` create new files if not exists
map gf :e <cfile><CR>

let java_ignore_javadoc=1
