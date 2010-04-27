" 本配色方案由 gui2term.py 程序增加彩色终端支持。
" Vim color file
"
" Author: Tomas Restrepo <tomas@winterdom.com>
"
" Note: Based on the monokai theme for textmate
" by Wimer Hazenberg and its darker variant 
" by Hamish Stuart Macpherson
"

hi clear

set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name="new_molokai"

if exists("g:molokai_original")
    let s:molokai_original = g:molokai_original
else
    let s:molokai_original = 0
endif


hi Boolean         guifg=#AE81FF ctermfg=141 ctermbg=66 cterm=none
hi Character       guifg=#E6DB74 ctermfg=185 ctermbg=66 cterm=none
hi Number          guifg=#AE81FF ctermfg=141 ctermbg=66 cterm=none
hi String          guifg=#E6DB74 ctermfg=185 ctermbg=66 cterm=none
hi Conditional     guifg=#F92672               gui=bold ctermfg=197 ctermbg=66 cterm=bold
hi Constant        guifg=#AE81FF               gui=bold ctermfg=141 ctermbg=66 cterm=bold
hi Cursor          guifg=#000000 guibg=#F8F8F0 ctermfg=16 ctermbg=230 cterm=none
hi Debug           guifg=#BCA3A3               gui=bold ctermfg=138 ctermbg=66 cterm=bold
hi Define          guifg=#66D9EF ctermfg=81 ctermbg=66 cterm=none
hi Delimiter       guifg=#8F8F8F ctermfg=245 ctermbg=66 cterm=none
hi DiffAdd                       guibg=#13354A ctermbg=23 cterm=none
hi DiffChange      guifg=#89807D guibg=#4C4745 ctermfg=245 ctermbg=239 cterm=none
hi DiffDelete      guifg=#960050 guibg=#1E0010 ctermfg=89 ctermbg=53 cterm=none
hi DiffText                      guibg=#4C4745 gui=italic,bold ctermbg=239 cterm=bold

hi Directory       guifg=#A6E22E               gui=bold ctermfg=191 ctermbg=66 cterm=bold
hi Error           guifg=#960050 guibg=#1E0010 ctermfg=89 ctermbg=53 cterm=none
hi ErrorMsg        guifg=#F92672 guibg=#232526 gui=bold ctermfg=197 ctermbg=66 cterm=bold
hi Exception       guifg=#A6E22E               gui=bold ctermfg=191 ctermbg=66 cterm=bold
hi Float           guifg=#AE81FF ctermfg=141 ctermbg=66 cterm=none
hi FoldColumn      guifg=#465457 guibg=#000000 ctermfg=66 ctermbg=16 cterm=none
hi Folded          guifg=#465457 guibg=#000000 ctermfg=66 ctermbg=16 cterm=none
hi Function        guifg=#A6E22E ctermfg=191 ctermbg=66 cterm=none
hi Identifier      guifg=#FD971F ctermfg=208 ctermbg=66 cterm=none
hi Ignore          guifg=#808080 guibg=bg ctermfg=244 ctermbg=66 cterm=none
hi IncSearch       guifg=#C4BE89 guibg=#000000 ctermfg=186 ctermbg=16 cterm=none

hi Keyword         guifg=#F92672               gui=bold ctermfg=197 ctermbg=66 cterm=bold
hi Label           guifg=#E6DB74               gui=none ctermfg=185 ctermbg=66 cterm=none
hi Macro           guifg=#C4BE89               gui=italic ctermfg=186 ctermbg=66 cterm=NONE
hi SpecialKey      guifg=#66D9EF               gui=italic ctermfg=245 ctermbg=66 cterm=NONE

hi MatchParen      guifg=#000000 guibg=#FD971F gui=bold ctermfg=16 ctermbg=208 cterm=bold
hi ModeMsg         guifg=#E6DB74 ctermfg=185 ctermbg=66 cterm=none
hi MoreMsg         guifg=#E6DB74 ctermfg=185 ctermbg=66 cterm=none
hi Operator        guifg=#F92672 ctermfg=197 ctermbg=66 cterm=none

" complete menu
hi Pmenu           guifg=#66D9EF guibg=#000000 ctermfg=81 ctermbg=16 cterm=none
hi PmenuSel                      guibg=#808080 ctermbg=244 cterm=none
hi PmenuSbar                     guibg=#080808 ctermbg=232 cterm=none
hi PmenuThumb      guifg=#66D9EF ctermfg=81 ctermbg=66 cterm=none

hi PreCondit       guifg=#A6E22E               gui=bold ctermfg=191 ctermbg=66 cterm=bold
hi PreProc         guifg=#A6E22E ctermfg=191 ctermbg=66 cterm=none
hi Question        guifg=#66D9EF ctermfg=81 ctermbg=66 cterm=none
hi Repeat          guifg=#F92672               gui=bold ctermfg=197 ctermbg=66 cterm=bold
hi Search          guifg=#FFFFFF guibg=#455354 ctermfg=231 ctermbg=66 cterm=none
" marks column
hi SignColumn      guifg=#A6E22E guibg=#232526 ctermfg=191 ctermbg=66 cterm=none
hi SpecialChar     guifg=#F92672               gui=bold ctermfg=197 ctermbg=66 cterm=bold
hi SpecialComment  guifg=#465457               gui=bold ctermfg=66 ctermbg=66 cterm=bold
hi Special         guifg=#66D9EF guibg=bg      gui=italic ctermfg=81 ctermbg=66 cterm=NONE
hi SpecialKey      guifg=#888A85               gui=italic ctermfg=245 ctermbg=66 cterm=NONE
if has("spell")
    hi SpellBad    guisp=#FF0000 gui=undercurl ctermbg=66 cterm=undercurl
    hi SpellCap    guisp=#7070F0 gui=undercurl ctermbg=66 cterm=undercurl
    hi SpellLocal  guisp=#70F0F0 gui=undercurl ctermbg=66 cterm=undercurl
    hi SpellRare   guisp=#FFFFFF gui=undercurl ctermbg=66 cterm=undercurl
endif
hi Statement       guifg=#F92672               gui=bold ctermfg=197 ctermbg=66 cterm=bold
hi StatusLine      guifg=#455354 guibg=fg ctermfg=66 ctermbg=230 cterm=none
hi StatusLineNC    guifg=#808080 guibg=#080808 ctermfg=244 ctermbg=232 cterm=none
hi StorageClass    guifg=#FD971F               gui=italic ctermfg=208 ctermbg=66 cterm=NONE
hi Structure       guifg=#66D9EF ctermfg=81 ctermbg=66 cterm=none
hi Tag             guifg=#F92672               gui=italic ctermfg=197 ctermbg=66 cterm=NONE
hi Title           guifg=#ef5939 ctermfg=209 ctermbg=66 cterm=none
hi Todo            guifg=#FFFFFF guibg=bg      gui=bold ctermfg=231 ctermbg=66 cterm=bold

hi Typedef         guifg=#66D9EF ctermfg=81 ctermbg=66 cterm=none
hi Type            guifg=#66D9EF               gui=none ctermfg=81 ctermbg=66 cterm=none
hi Underlined      guifg=#808080               gui=underline ctermfg=244 ctermbg=66 cterm=underline

hi VertSplit       guifg=#808080 guibg=#080808 gui=bold ctermfg=244 ctermbg=232 cterm=bold
hi VisualNOS                     guibg=#403D3D ctermbg=238 cterm=none
hi Visual                        guibg=#403D3D ctermbg=238 cterm=none
hi WarningMsg      guifg=#FFFFFF guibg=#333333 gui=bold ctermfg=231 ctermbg=236 cterm=bold
hi WildMenu        guifg=#66D9EF guibg=#000000 ctermfg=81 ctermbg=16 cterm=none

if s:molokai_original == 1
   hi Normal          guifg=#F8F8F2 guibg=#272822 ctermfg=230 ctermbg=66 cterm=none
   hi Comment         guifg=#75715E ctermfg=66 ctermbg=66 cterm=none
   hi CursorLine                    guibg=#3E3D32 ctermbg=66 cterm=none
   hi CursorColumn                  guibg=#3E3D32 ctermbg=66 cterm=none
   hi LineNr          guifg=#BCBCBC guibg=#3B3A32 ctermfg=250 ctermbg=66 cterm=none
   hi NonText         guifg=#BCBCBC guibg=#3B3A32 ctermfg=250 ctermbg=66 cterm=none
else
   hi Normal          guifg=#F8F8F2 guibg=#1B1D1E ctermfg=230 ctermbg=66 cterm=none
   hi Comment         guifg=#465457 ctermfg=66 ctermbg=66 cterm=none
   hi CursorLine                    guibg=#293739 ctermbg=66 cterm=none
   hi CursorColumn                  guibg=#293739 ctermbg=66 cterm=none
   hi LineNr          guifg=#BCBCBC guibg=#232526 ctermfg=250 ctermbg=66 cterm=none
   hi NonText         guifg=#BCBCBC guibg=#232526 ctermfg=250 ctermbg=66 cterm=none
end

