let s:colors = {}

let s:colors.black = '#161616'
let s:colors.blue = '#8f91cb'
let s:colors.bright_red = '#f62539'
let s:colors.cyan = '#90CDDE'
let s:colors.grey = '#959da5'
let s:colors.green = '#51A266'
let s:colors.light_grey_green = '#99B797'
let s:colors.bright_green = '#91D2A3'
let s:colors.magenta = '#3F7CB3'
let s:colors.red = '#dfa347'
let s:colors.orange = '#EA9B38'
let s:colors.white = '#f6f8fa'
let s:colors.yellow = '#ffea7f'
let s:colors.redish_white = '#FDEDD5'
let s:colors.mid_green = '#1B9C36'
let s:colors.bright_purple= '#4F5AB7'
let s:colors.terminal_background = '#000000'
let s:colors.terminal_background_nc = '#0C0C0C'
let s:colors.background = s:colors.black
let s:colors.background_lighter = '#2d3237'
let s:colors.foreground = s:colors.white

let s:colors.selection_bg = '#7E7E7E'
let s:colors.selection_fg = s:colors.background

let s:colors.color_col = '#191919'
let s:colors.cursor_bg = s:colors.green
let s:colors.cursor_fg = s:colors.background
let s:colors.cursor_guide = '#1c2024'
let s:colors.split = '#454d56'

let s:colors.selected_bg = '#1269d3'
let s:colors.sneak_bg = '#b32ef0'
let s:colors.win_bg = '#3a3f43'

let s:colors.none = 'NONE'
let s:colors.underline = 'underline'
let s:colors.undercurl = 'undercurl'
let s:colors.italic = 'italic'
let s:colors.bold = 'bold'

function! codesmell_dark#get_colors() abort
  return s:colors
endfunction
