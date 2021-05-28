local Color, colors, Group, groups, styles = require("colorbuddy").setup()
local Color = require('colorbuddy.color').Color
local Group = require('colorbuddy.group').Group
local g = require('colorbuddy.group').groups
local c = require('colorbuddy.color').colors
local s = require('colorbuddy.style').styles
local b = s.bold
local i = s.italic
local n = s.inverse
local uc = s.undercurl
local ul = s.underline
local r = s.reverse
local sto = s.standout
local no = s.NONE
local v = vim.g

v.colors_name = 'hemisu'

Color.new('black', '#000000')
Color.new('white', '#FFFFFF')
Color.new('almost_white', '#EEEEEE')
Color.new('almost_black', '#111111')
Color.new('middle_dark_grey', '#777777')
Color.new('middle_light_grey', '#999999')
Color.new('light_grey', '#BBBBBB')
Color.new('dark_grey', '#444444')

Color.new('dark_pink', '#63001C')
Color.new('middle_dark_pink', '#FF0055')
Color.new('middle_light_pink', '#D65E76')
Color.new('light_pink', '#FFAFAF')

Color.new('dark_blue', '#005F87')
Color.new('middle_dark_blue', '#538192')
Color.new('middle_light_blue', '#9FD3E6')
Color.new('light_blue', '#CBE4EE')

Color.new('dark_green', '#5F5F00')
Color.new('middle_dark_green', '#739200')
Color.new('middle_light_green', '#B1D631')
Color.new('light_green', '#BBFFAA')

Color.new('dark_tan', '#503D15')
Color.new('light_tan', '#ECE1C8')

-- let s:bg         = s:black
-- let s:norm       = s:almostWhite
-- let s:comment    = s:middleDarkGrey
-- let s:dimmed     = s:middleLightGrey
-- let s:subtle     = s:darkGrey
-- let s:faint      = s:almostBlack
-- let s:accent1    = s:middleLightBlue
-- let s:accent2    = s:middleLightGreen
-- let s:accent3    = s:lightGreen
-- let s:accent4    = s:lightTan
-- let s:normRed    = s:middleLightPink
-- let s:normGreen  = s:middleLightGreen
-- let s:normBlue   = s:middleLightBlue
-- let s:faintRed   = s:darkPink
-- let s:faintGreen = s:darkGreen
-- let s:faintBlue  = s:darkBlue

Group.new('Normal', c.almost_white, c.black, no)
Group.new('NonText', c.dark_grey, c.black, no)
Group.new('LineNr', c.dark_grey, c.black, no)
Group.new('Comment', c.middle_dark_grey, c.black, i)
Group.new('String', c.middle_light_green, c.black, no)
Group.new('Constant', c.middle_light_blue, c.black, no)
Group.new('Type', c.light_green, c.black, no)
Group.new('Keyword', c.light_green, c.black, no)
Group.new('Repeat', c.middle_light_pink, c.black, no)
Group.new('Function', c.almost_white, c.black, b)
Group.new('Todo', c.middle_light_pink, c.black, b)
Group.new('Include', c.almost_white, c.black, b)

Group.new('Conditional', g.keyword, nil, no)
Group.new('Identifier', g.Function, g.Function, g.Function)
Group.new('Special', g.Constant, g.Constant, g.Constant)
Group.new('Statement', g.Type, g.Type, g.Type)
Group.new('Number', g.constant, nil, no)
Group.new('Delimiter', c.middle_light_grey, c.black, no)
Group.new('Operator', g.delimiter, nil, nil)

-- Treesitter
Group.new('TSComment', g.Comment, g.Comment, g.Comment)
Group.new('TSConstant', g.Constant, g.Constant, g.Constant)
Group.new('TSType', g.Type, g.Type, g.Type)
Group.new('TSIdentifier', g.Function, g.Function, g.Function)
Group.new('TSFunction', g.Function, g.Function, g.Function)
Group.new('TSRepeat', c.middle_light_pink, c.black, no)
Group.new('TSInclude', g.include, nil, nil)
Group.new("TSVariableBuiltin", c.light_grey, c.black, b);
