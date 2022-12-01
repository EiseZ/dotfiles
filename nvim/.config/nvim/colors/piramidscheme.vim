if !has("gui_running") && &t_Co < 256
    finish
endif

set background=dark

hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = 'piramidscheme'



hi! Normal              guibg=#161828 guifg=#dddddd
hi! EndOfBuffer         guibg=#161828 guifg=#dddddd
hi! Cursor              guibg=#367d91 guifg=#dddddd

hi! ErrorMsg            guibg=#161828 guifg=#913636

" red #913636
" orange #915636
" yellow #918a36
" green #6b9136
" teal #36915c
" blue 367d91
" purple #363991
"
" fg #dddddd
" bg #161828

"hi! link jsFunction Function
"help highlight-groups
