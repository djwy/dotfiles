set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "PlasticCodeWrap"

hi Cursor ctermfg=16 ctermbg=109 cterm=NONE guifg=#00161b guibg=#8ba7a7 gui=NONE
hi Visual ctermfg=NONE ctermbg=66 cterm=NONE guifg=NONE guibg=#637b82 gui=NONE
hi CursorLine ctermfg=NONE ctermbg=234 cterm=NONE guifg=NONE guibg=#1c1c1c gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=234 cterm=NONE guifg=NONE guibg=#1c1c1c gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=234 cterm=NONE guifg=NONE guibg=#1c1c1c gui=NONE
hi LineNr ctermfg=102 ctermbg=234 cterm=NONE guifg=#7c878a guibg=#1c1c1c gui=NONE
hi VertSplit ctermfg=59 ctermbg=59 cterm=NONE guifg=#48585b guibg=#48585b gui=NONE
hi MatchParen ctermfg=208 ctermbg=NONE cterm=underline guifg=#fb9a00 guibg=NONE gui=underline
hi StatusLine ctermfg=231 ctermbg=59 cterm=bold guifg=#f8f8f8 guibg=#48585b gui=bold
hi StatusLineNC ctermfg=231 ctermbg=59 cterm=NONE guifg=#f8f8f8 guibg=#48585b gui=NONE
hi Pmenu ctermfg=220 ctermbg=NONE cterm=bold guifg=#efe900 guibg=NONE gui=bold
hi PmenuSel ctermfg=NONE ctermbg=66 cterm=NONE guifg=NONE guibg=#637b82 gui=NONE
hi IncSearch ctermfg=16 ctermbg=71 cterm=NONE guifg=#00161b guibg=#65ba3a gui=NONE
hi Search ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi Directory ctermfg=204 ctermbg=NONE cterm=NONE guifg=#ec3578 guibg=NONE gui=NONE
hi Folded ctermfg=244 ctermbg=234 cterm=NONE guifg=#838383 guibg=#00161b gui=NONE

hi Normal ctermfg=231 ctermbg=235 cterm=NONE guifg=#f8f8f8 guibg=#00161b gui=NONE
hi Boolean ctermfg=204 ctermbg=NONE cterm=NONE guifg=#ec3578 guibg=NONE gui=NONE
hi Character ctermfg=204 ctermbg=NONE cterm=NONE guifg=#ec3578 guibg=NONE gui=NONE
hi Comment ctermfg=244 ctermbg=NONE cterm=NONE guifg=#838383 guibg=NONE gui=italic
hi Conditional ctermfg=208 ctermbg=NONE cterm=bold guifg=#fb9a00 guibg=NONE gui=bold
hi Constant ctermfg=204 ctermbg=NONE cterm=NONE guifg=#ec3578 guibg=NONE gui=NONE
hi Define ctermfg=208 ctermbg=NONE cterm=bold guifg=#fb9a00 guibg=NONE gui=bold
hi DiffAdd ctermfg=231 ctermbg=64 cterm=bold guifg=#f8f8f8 guibg=#3e800a gui=bold
hi DiffDelete ctermfg=88 ctermbg=NONE cterm=NONE guifg=#830405 guibg=NONE gui=NONE
hi DiffChange ctermfg=231 ctermbg=23 cterm=NONE guifg=#f8f8f8 guibg=#103051 gui=NONE
hi DiffText ctermfg=231 ctermbg=24 cterm=bold guifg=#f8f8f8 guibg=#204a87 gui=bold
hi ErrorMsg ctermfg=231 ctermbg=124 cterm=NONE guifg=#f8f8f8 guibg=#a02411 gui=NONE
hi WarningMsg ctermfg=231 ctermbg=124 cterm=NONE guifg=#f8f8f8 guibg=#a02411 gui=NONE
hi Float ctermfg=204 ctermbg=NONE cterm=NONE guifg=#ec3578 guibg=NONE gui=NONE
hi Function ctermfg=220 ctermbg=NONE cterm=bold guifg=#efe900 guibg=NONE gui=bold
hi Identifier ctermfg=228 ctermbg=NONE cterm=NONE guifg=#f6f080 guibg=NONE gui=NONE
hi Keyword ctermfg=208 ctermbg=NONE cterm=bold guifg=#fb9a00 guibg=NONE gui=bold
hi Label ctermfg=71 ctermbg=NONE cterm=NONE guifg=#65ba3a guibg=NONE gui=NONE
hi NonText ctermfg=91 ctermbg=234 cterm=NONE guifg=#182d2a guibg=#0c2126 gui=NONE
hi Number ctermfg=204 ctermbg=NONE cterm=NONE guifg=#ec3578 guibg=NONE gui=NONE
hi Operator ctermfg=208 ctermbg=NONE cterm=bold guifg=#fb9a00 guibg=NONE gui=bold
hi PreProc ctermfg=208 ctermbg=NONE cterm=bold guifg=#fb9a00 guibg=NONE gui=bold
hi Special ctermfg=231 ctermbg=NONE cterm=NONE guifg=#f8f8f8 guibg=NONE gui=NONE
hi SpecialKey ctermfg=16 ctermbg=234 cterm=NONE guifg=#182d2a guibg=#1c1c1c gui=NONE
hi Statement ctermfg=208 ctermbg=NONE cterm=bold guifg=#fb9a00 guibg=NONE gui=bold
hi StorageClass ctermfg=228 ctermbg=NONE cterm=NONE guifg=#f6f080 guibg=NONE gui=NONE
hi String ctermfg=71 ctermbg=NONE cterm=NONE guifg=#65ba3a guibg=NONE gui=NONE
hi Tag ctermfg=220 ctermbg=NONE cterm=bold guifg=#efe900 guibg=NONE gui=bold
hi Title ctermfg=231 ctermbg=NONE cterm=bold guifg=#f8f8f8 guibg=NONE gui=bold
hi Todo ctermfg=244 ctermbg=NONE cterm=inverse,bold guifg=#838383 guibg=NONE gui=inverse,bold,italic
hi Type ctermfg=220 ctermbg=NONE cterm=bold guifg=#efe900 guibg=NONE gui=bold
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi rubyClass ctermfg=208 ctermbg=NONE cterm=bold guifg=#fb9a00 guibg=NONE gui=bold
hi rubyFunction ctermfg=220 ctermbg=NONE cterm=bold guifg=#efe900 guibg=NONE gui=bold
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=204 ctermbg=NONE cterm=NONE guifg=#ec3578 guibg=NONE gui=NONE
hi rubyConstant ctermfg=157 ctermbg=NONE cterm=NONE guifg=#9df39f guibg=NONE gui=NONE
hi rubyStringDelimiter ctermfg=71 ctermbg=NONE cterm=NONE guifg=#65ba3a guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=32 ctermbg=NONE cterm=NONE guifg=#1e9ae0 guibg=NONE gui=NONE
hi rubyInstanceVariable ctermfg=32 ctermbg=NONE cterm=NONE guifg=#1e9ae0 guibg=NONE gui=NONE
hi rubyInclude ctermfg=208 ctermbg=NONE cterm=bold guifg=#fb9a00 guibg=NONE gui=bold
hi rubyGlobalVariable ctermfg=32 ctermbg=NONE cterm=NONE guifg=#1e9ae0 guibg=NONE gui=NONE
hi rubyRegexp ctermfg=215 ctermbg=NONE cterm=NONE guifg=#ffb454 guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=215 ctermbg=NONE cterm=NONE guifg=#ffb454 guibg=NONE gui=NONE
hi rubyEscape ctermfg=204 ctermbg=NONE cterm=NONE guifg=#ec3578 guibg=NONE gui=NONE
hi rubyControl ctermfg=208 ctermbg=NONE cterm=bold guifg=#fb9a00 guibg=NONE gui=bold
hi rubyClassVariable ctermfg=32 ctermbg=NONE cterm=NONE guifg=#1e9ae0 guibg=NONE gui=NONE
hi rubyOperator ctermfg=208 ctermbg=NONE cterm=bold guifg=#fb9a00 guibg=NONE gui=bold
hi rubyException ctermfg=208 ctermbg=NONE cterm=bold guifg=#fb9a00 guibg=NONE gui=bold
hi rubyPseudoVariable ctermfg=32 ctermbg=NONE cterm=NONE guifg=#1e9ae0 guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=157 ctermbg=NONE cterm=NONE guifg=#9df39f guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod ctermfg=134 ctermbg=NONE cterm=NONE guifg=#b43cdf guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=134 ctermbg=NONE cterm=NONE guifg=#b43cdf guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=134 ctermbg=NONE cterm=NONE guifg=#b43cdf guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=134 ctermbg=NONE cterm=NONE guifg=#b43cdf guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyComment ctermfg=244 ctermbg=NONE cterm=NONE guifg=#838383 guibg=NONE gui=italic
hi erubyRailsMethod ctermfg=134 ctermbg=NONE cterm=NONE guifg=#b43cdf guibg=NONE gui=NONE
hi htmlTag ctermfg=110 ctermbg=NONE cterm=NONE guifg=#78a4da guibg=NONE gui=NONE
hi htmlEndTag ctermfg=110 ctermbg=NONE cterm=NONE guifg=#78a4da guibg=NONE gui=NONE
hi htmlTagName ctermfg=110 ctermbg=NONE cterm=NONE guifg=#78a4da guibg=NONE gui=NONE
hi htmlArg ctermfg=110 ctermbg=NONE cterm=NONE guifg=#78a4da guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=221 ctermbg=NONE cterm=NONE guifg=#f1e94b guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=228 ctermbg=NONE cterm=NONE guifg=#f6f080 guibg=NONE gui=NONE
hi javaScriptRailsFunction ctermfg=134 ctermbg=NONE cterm=NONE guifg=#b43cdf guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=220 ctermbg=NONE cterm=bold guifg=#efe900 guibg=NONE gui=bold
hi yamlAnchor ctermfg=32 ctermbg=NONE cterm=NONE guifg=#1e9ae0 guibg=NONE gui=NONE
hi yamlAlias ctermfg=32 ctermbg=NONE cterm=NONE guifg=#1e9ae0 guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=71 ctermbg=NONE cterm=NONE guifg=#65ba3a guibg=NONE gui=NONE
hi cssURL ctermfg=32 ctermbg=NONE cterm=NONE guifg=#1e9ae0 guibg=NONE gui=NONE
hi cssFunctionName ctermfg=134 ctermbg=NONE cterm=NONE guifg=#b43cdf guibg=NONE gui=NONE
hi cssColor ctermfg=204 ctermbg=NONE cterm=NONE guifg=#ec3578 guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=220 ctermbg=NONE cterm=bold guifg=#efe900 guibg=NONE gui=bold
hi cssClassName ctermfg=220 ctermbg=NONE cterm=bold guifg=#efe900 guibg=NONE gui=bold
hi cssValueLength ctermfg=204 ctermbg=NONE cterm=NONE guifg=#ec3578 guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=174 ctermbg=NONE cterm=NONE guifg=#eb939a guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
