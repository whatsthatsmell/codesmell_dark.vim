highlight! clear
syntax reset

if !(has('termguicolors') && &termguicolors) && !has('gui_running')
  finish
endif
" ---------------------------------------------------------------------
function! s:HL(group, ...) abort
  execute 'highlight! ' . a:group . ' ctermfg=NONE'
  execute 'highlight! ' . a:group . ' ctermbg=NONE'
  execute 'highlight! ' . a:group . ' cterm=NONE'

  let fg = get(a:, 1, '')
  let bg = get(a:, 2, '')
  let attr = get(a:, 3, '')

  if !empty(fg)
    execute 'highlight! ' . a:group . ' guifg=' . fg
  else
    echoerr 'no fg for ' . a:group
    return
  endif

  if !empty(bg)
    execute 'highlight! ' . a:group . ' guibg=' . bg
  else
    echoerr 'no bg for ' . a:group
    return
  endif

  if !empty(attr)
    execute 'highlight! ' . a:group . ' gui=' . attr
  else
    execute 'highlight! ' . a:group . ' gui=NONE'
  endif
endfunction
" ---------------------------------------------------------------------
let g:colors_name = "codesmell_dark"
set background=dark
" ---------------------------------------------------------------------
let s:colors = codesmell_dark#get_colors()

" Color Scheme
" Markdown----------------------------------------------------
call s:HL('markdownH1', s:colors.neovim_blue, s:colors.none, s:colors.bold)
call s:HL('markdownH1Delimiter', s:colors.neovim_blue, s:colors.none, s:colors.bold)
call s:HL('markdownH2', s:colors.yellow, s:colors.none, s:colors.bold)
call s:HL('markdownH2Delimiter', s:colors.yellow, s:colors.none, s:colors.bold)
call s:HL('markdownH3', s:colors.green, s:colors.none, s:colors.bold)
call s:HL('markdownH3Delimiter', s:colors.green, s:colors.none, s:colors.bold)
call s:HL('markdownCode', s:colors.blue_grey, s:colors.none, s:colors.bold)
call s:HL('markdownCodeDelimiter', s:colors.grey_green, s:colors.none, s:colors.bold)
call s:HL('markdownListMarker', s:colors.mid_green, s:colors.none, s:colors.bold)
call s:HL('markdownLinkText', s:colors.dodger_blue, s:colors.none, s:colors.bold)
call s:HL('markdownLink', s:colors.dodger_blue, s:colors.none, s:colors.bold)
" ----------------------------------------------------
call s:HL('ColorColumn', s:colors.none, s:colors.color_col)
call s:HL('Conceal', s:colors.blue, s:colors.none)
call s:HL('Cursor', s:colors.cursor_fg, s:colors.cursor_bg)
call s:HL('CursorIM', s:colors.cursor_fg, s:colors.cursor_bg)
call s:HL('CursorColumn', s:colors.none, s:colors.cursor_guide)
call s:HL('CursorLine', s:colors.none, s:colors.cursor_guide)
" ----------------------------------------------------
call s:HL('DarkenedTerm', s:colors.none, s:colors.terminal_background)
call s:HL('DarkenedTermNC', s:colors.none, s:colors.terminal_background_nc)
" ----------------------------------------------------
call s:HL('Directory', s:colors.cyan, s:colors.none)
" ----------------------------------------------------
call s:HL('DiffAdd', s:colors.green, s:colors.background)
call s:HL('DiffChange', s:colors.yellow, s:colors.background)
call s:HL('DiffDelete', s:colors.bright_red, s:colors.background)
call s:HL('DiffText', s:colors.foreground, s:colors.background)
" ----------------------------------------------------
call s:HL('EndOfBuffer', s:colors.background, s:colors.none)
" ----------------------------------------------------
call s:HL('ErrorMsg', s:colors.red, s:colors.none)
" ----------------------------------------------------
call s:HL('VertSplit', s:colors.split, s:colors.none)
" ----------------------------------------------------
call s:HL('Folded', s:colors.background, s:colors.magenta, s:colors.bold)
call s:HL('FoldColumn', s:colors.magenta, s:colors.none, s:colors.bold)
" ----------------------------------------------------
call s:HL('SignColumn', s:colors.none, s:colors.none)
call s:HL('IncSearch', s:colors.background, s:colors.grey_green)
call s:HL('LineNr', s:colors.grey, s:colors.none)
call s:HL('CursorLineNr', s:colors.foreground, s:colors.none)
call s:HL('MatchParen', s:colors.red, s:colors.none, s:colors.undercurl)
call s:HL('MatchWord', s:colors.none, s:colors.none, s:colors.undercurl)
" ----------------------------------------------------
call s:HL('ModeMsg', s:colors.foreground, s:colors.none)
call s:HL('MoreMsg', s:colors.green, s:colors.none)
call s:HL('NonText', s:colors.grey, s:colors.none)
" base color
call s:HL('Normal', s:colors.foreground, s:colors.background)
" ----------------------------------------------------
call s:HL('Pmenu', s:colors.green, s:colors.black)
call s:HL('PmenuSel', s:colors.foreground, s:colors.selected_bg)
call s:HL('PmenuSbar', s:colors.terminal_background_nc, s:colors.terminal_background)
call s:HL('PmenuThumb', s:colors.terminal_background_nc, s:colors.green)
" ----------------------------------------------------
call s:HL('Question', s:colors.red, s:colors.none)
call s:HL('QuickFixLine', s:colors.foreground, s:colors.selection_bg)
call s:HL('Search', s:colors.background, s:colors.neovim_green)
call s:HL('SpecialKey', s:colors.grey, s:colors.none)
" ----------------------------------------------------
call s:HL('SpellBad', s:colors.bright_red, s:colors.none, s:colors.undercurl)
call s:HL('SpellCap', s:colors.none, s:colors.none, s:colors.underline)
call s:HL('SpellLocal', s:colors.none, s:colors.none, s:colors.underline)
call s:HL('SpellRare', s:colors.none, s:colors.none, s:colors.underline)
" ----------------------------------------------------
call s:HL('StatusLine', s:colors.foreground, s:colors.none)
call s:HL('StatusLineNC', s:colors.grey, s:colors.background_lighter)
call s:HL('StatusLineTerm', s:colors.foreground, s:colors.none)
call s:HL('StatusLineTermNC', s:colors.grey, s:colors.none)
" ----------------------------------------------------
call s:HL('TabLine', s:colors.foreground, s:colors.none)
call s:HL('TabLineFill', s:colors.none, s:colors.none)
call s:HL('TabLineSel', s:colors.foreground, s:colors.selected_bg)
call s:HL('Terminal', s:colors.foreground, s:colors.background)
call s:HL('Title', s:colors.light_bright_green, s:colors.none)
call s:HL('Visual', s:colors.selection_fg, s:colors.selection_bg)
call s:HL('VisualNOS', s:colors.selection_fg, s:colors.selection_bg)
call s:HL('WarningMsg', s:colors.red, s:colors.none)
call s:HL('WildMenu', s:colors.background, s:colors.cyan)
" standard syntax
" ----------------------------------------------------
call s:HL('Comment', s:colors.grey, s:colors.none)
" ----------------------------------------------------
call s:HL('Constant', s:colors.foreground, s:colors.none)
call s:HL('String', s:colors.green, s:colors.none)
call s:HL('Character', s:colors.green, s:colors.none)
call s:HL('Number', s:colors.cyan, s:colors.none)
call s:HL('Boolean', s:colors.cyan, s:colors.none)
call s:HL('Float', s:colors.cyan, s:colors.none)
" ----------------------------------------------------
call s:HL('Identifier', s:colors.blue, s:colors.none)
call s:HL('Function', s:colors.blue, s:colors.none)
" ----------------------------------------------------
call s:HL('rustAttribute', s:colors.red, s:colors.none, s:colors.bold)
call s:HL('Statement', s:colors.magenta, s:colors.none, s:colors.bold)
call s:HL('Conditional', s:colors.cyan, s:colors.none, s:colors.bold)
call s:HL('Repeat', s:colors.cyan, s:colors.none, s:colors.bold)
call s:HL('Operator', s:colors.magenta, s:colors.none)
call s:HL('Keyword', s:colors.magenta, s:colors.none, s:colors.bold)
call s:HL('Exception', s:colors.cyan, s:colors.none, s:colors.bold)
" ----------------------------------------------------
call s:HL('PreProc', s:colors.cyan, s:colors.none)
call s:HL('Include', s:colors.cyan, s:colors.none)
" <Macro> same as <Define>
call s:HL('Define', s:colors.yellow, s:colors.none)
call s:HL('Macro', s:colors.yellow, s:colors.none)
call s:HL('PreCondit', s:colors.cyan, s:colors.none)
" ----------------------------------------------------
call s:HL('Type', s:colors.yellow, s:colors.none, s:colors.bold)
call s:HL('StorageClass', s:colors.yellow, s:colors.none, s:colors.bold)
call s:HL('Structure', s:colors.magenta, s:colors.none, s:colors.bold)
call s:HL('Typedef', s:colors.yellow, s:colors.none, s:colors.bold)
" ----------------------------------------------------
call s:HL('Special', s:colors.cyan, s:colors.none)
" ----------------------------------------------------
call s:HL('Underlined', s:colors.none, s:colors.none, s:colors.underline)
call s:HL('Ignore', s:colors.none, s:colors.none)
call s:HL('Error', s:colors.red, s:colors.none)
call s:HL('Todo', s:colors.yellow, s:colors.none)

" lsp
" ----------------------------------------------------
call s:HL('LspErrorText', s:colors.red, s:colors.none)
call s:HL('LspWarningText', s:colors.yellow, s:colors.none)
call s:HL('LspInformationText', s:colors.green, s:colors.none)
call s:HL('LspHintText', s:colors.grey, s:colors.none)
" ----------------------------------------------------
call s:HL('LspErrorHighlight', s:colors.none, s:colors.none, s:colors.underline)
call s:HL('LspWarningHighlight', s:colors.none, s:colors.none, s:colors.underline)
call s:HL('LspInformationHighlight', s:colors.none, s:colors.none, s:colors.underline)
call s:HL('LspHintHighlight', s:colors.none, s:colors.none, s:colors.underline)
call s:HL('FloatBorder', s:colors.green, s:colors.black)

" ALE
" ----------------------------------------------------
call s:HL('ALEErrorSign', s:colors.red, s:colors.none)
call s:HL('ALEWarningSign', s:colors.yellow, s:colors.none)
call s:HL('ALEInfoSign', s:colors.green, s:colors.none)
" ----------------------------------------------------
call s:HL('ALEError', s:colors.none, s:colors.none, s:colors.underline)
call s:HL('ALEWarning', s:colors.none, s:colors.none, s:colors.underline)
call s:HL('ALEInfo', s:colors.none, s:colors.none, s:colors.underline)

" Treesitter & language specific highlighting
" ----------------------------------------------------
call s:HL('TSComment', s:colors.dark_grey, s:colors.none)
call s:HL('TSVariable', s:colors.light_bright_green, s:colors.none)
call s:HL('TSConstant', s:colors.bright_green, s:colors.none)
call s:HL('TSMethod', s:colors.bright_green, s:colors.none)
call s:HL('TSConstructor', s:colors.blue, s:colors.none, s:colors.bold)
call s:HL('TSString', s:colors.redish_white, s:colors.none, s:colors.italic)
call s:HL('TSStringRegex', s:colors.red, s:colors.none, s:colors.bold)
" --- Language specific stuff
" -- vimL
call s:HL('vimString', s:colors.redish_white, s:colors.none, s:colors.italic)
" -- lua
call s:HL('luaTSString', s:colors.redish_white, s:colors.none)
call s:HL('luaTSKeywordReturn', s:colors.dodger_blue, s:colors.none)
" -- javascript
call s:HL('javascriptTSKeywordReturn', s:colors.green, s:colors.none)
" --- a little Rust specific TS syntax highlighting
call s:HL('rustTSType', s:colors.yellow, s:colors.none, s:colors.none)
call s:HL('rustTSPunctBracket', s:colors.neovim_green, s:colors.none, s:colors.none)
call s:HL('rustFoldBraces', s:colors.neovim_green, s:colors.none, s:colors.none)
call s:HL('rustTSLabel', s:colors.neovim_green, s:colors.none)
call s:HL('rustTSTypeBuiltin', s:colors.bright_purple, s:colors.bold)
call s:HL('rustTSInclude', s:colors.magenta, s:colors.none, s:colors.bold)
call s:HL('rustTSFuncMacro', s:colors.redish_white, s:colors.none)
call s:HL('rustTSNamespace', s:colors.cyan, s:colors.none)
" --- markdown Treesitter
call s:HL('TSPunctSpecial', s:colors.green, s:colors.none, s:colors.bold)
call s:HL('TSTitle', s:colors.blue, s:colors.none, s:colors.bold)

" Telescopic highlighting
" ----------------------------------------------------
call s:HL('TelescopeMatching', s:colors.green, s:colors.none)
call s:HL('TelescopePromptPrefix', s:colors.bright_green, s:colors.none)
call s:HL('TelescopeBorder', s:colors.bright_green, s:colors.none)
call s:HL('TelescopeResultsBorder', s:colors.neovim_blue, s:colors.none)
call s:HL('TelescopePreviewBorder', s:colors.neovim_blue, s:colors.none)
call s:HL('TelescopePromptBorder', s:colors.neovim_blue, s:colors.none)

" nvim-notify highlighting
" ----------------------------------------------------
call s:HL('NotifyDEBUGBody', s:colors.redish_white, s:colors.none)
call s:HL('NotifyDEBUGTitle', s:colors.neovim_blue, s:colors.none)
call s:HL('NotifyDEBUGIcon', s:colors.neovim_green, s:colors.none)
call s:HL('NotifyDEBUGBorder', s:colors.neovim_blue, s:colors.none)

" gitsigns highlighting
" ----------------------------------------------------
call s:HL('GitSignsCurrentLineBlame', s:colors.grey_green, s:colors.none)
" used for virtual deleted lines as of 14-Jan-2022: 
" https://github.com/lewis6991/gitsigns.nvim/pull/443#issuecomment-1013292087
" https://github.com/lewis6991/gitsigns.nvim/pull/395
call s:HL('GitSignsDeleteLn', s:colors.redish_white, s:colors.none)

" diagnostics highlighting
" ----------------------------------------------------
call s:HL('DiagnosticsSignError', s:colors.bright_red, s:colors.none)
call s:HL('DiagnosticSignWarn', s:colors.orange, s:colors.none)
call s:HL('DiagnosticSignInfo', s:colors.dodger_blue, s:colors.none)
call s:HL('DiagnosticSignHint', s:colors.bright_green, s:colors.none)

" nvim-cmp highlighting
" ----------------------------------------------------
call s:HL('CmpItemAbbrMatchFuzzy', s:colors.bright_green, s:colors.none)
call s:HL('CmpItemAbbrMatch', s:colors.bright_green, s:colors.none)
call s:HL('CmpItemKindKeyword', s:colors.magenta, s:colors.none)
call s:HL('CmpItemKindMethod', s:colors.bright_green, s:colors.none)
call s:HL('CmpItemKindVariable', s:colors.light_bright_green, s:colors.none)
call s:HL('CmpItemKindFunction', s:colors.blue, s:colors.none)
call s:HL('CmpItemKindText', s:colors.redish_white, s:colors.none)

" IndentBlanklineIndent highlighting
" ----------------------------------------------------
call s:HL('IndentBlanklineIndent1', s:colors.dark_grey, s:colors.none)
call s:HL('IndentBlanklineIndent2', s:colors.grey_green, s:colors.none)

" rainbow
" ----------------------------------------------------
if !exists('g:rainbow_conf')
  let g:rainbow_conf = {}
endif

if !has_key(g:rainbow_conf, 'guifgs')
  let g:rainbow_conf['guifgs'] = [s:colors.cyan, s:colors.yellow, s:colors.red]
endif

if !has_key(g:rainbow_conf, 'separately')
  let g:rainbow_conf['separately'] = {}
endif

if !has_key(g:rainbow_conf['separately'], 'lisp')
  let g:rainbow_conf['separately']['lisp'] = {
    \ 'guifgs': g:rainbow_conf['guifgs'],
    \ }
endif

" ---------------------------------------------------------------------
if has('nvim')
  let g:terminal_color_0 = s:colors.black
  let g:terminal_color_1 = s:colors.red
  let g:terminal_color_2 = s:colors.green
  let g:terminal_color_3 = s:colors.yellow
  let g:terminal_color_4 = s:colors.magenta
  let g:terminal_color_5 = s:colors.magenta
  let g:terminal_color_6 = s:colors.cyan
  let g:terminal_color_7 = s:colors.win_bg
  let g:terminal_color_8 = s:colors.grey
  let g:terminal_color_9 = s:colors.red
  let g:terminal_color_10 = s:colors.green
  let g:terminal_color_11 = s:colors.yellow
  let g:terminal_color_12 = s:colors.blue
  let g:terminal_color_13 = s:colors.magenta
  let g:terminal_color_14 = s:colors.cyan
  let g:terminal_color_15 = s:colors.white
elseif exists('*term_setansicolors')
  let g:terminal_ansi_colors = [
    \ s:colors.black,
    \ s:colors.red,
    \ s:colors.green,
    \ s:colors.yellow,
    \ s:colors.blue,
    \ s:colors.magenta,
    \ s:colors.cyan,
    \ s:colors.white,
    \ s:colors.grey,
    \ s:colors.red,
    \ s:colors.green,
    \ s:colors.yellow,
    \ s:colors.blue,
    \ s:colors.magenta,
    \ s:colors.cyan,
    \ s:colors.white,
    \ ]
endif
