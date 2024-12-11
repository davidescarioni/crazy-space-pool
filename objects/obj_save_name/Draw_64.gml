draw_set_font(fnt_hud)
draw_set_halign(fa_center)
draw_set_color(c_white)
var _xpos = camera_get_view_width(view_camera[0])*2
var _ypos = camera_get_view_height(view_camera[0])*2

var _text0 = string("Inserisci il tuo nome:")
draw_text(_xpos, _ypos-40, _text0)

var _one = chr(letters[0])
var _two = chr(letters[1])
var _three = chr(letters[2])
var _four = chr(letters[3])
var _five = chr(letters[4])
var _six = chr(letters[5])

var _d = 34; // LETTER DISTANCE
var _text_pos = _xpos-_d*3

if index == 0 draw_set_color(c_green) else draw_set_color(c_white)
draw_text(_text_pos, _ypos, _one)
if index == 1 draw_set_color(c_green) else draw_set_color(c_white)
draw_text(_text_pos + _d, _ypos, _two)
if index == 2 draw_set_color(c_green) else draw_set_color(c_white)
draw_text(_text_pos + _d*2, _ypos, _three)
if index == 3 draw_set_color(c_green) else draw_set_color(c_white)
draw_text(_text_pos + _d*3, _ypos, _four)
if index == 4 draw_set_color(c_green) else draw_set_color(c_white)
draw_text(_text_pos + _d*4, _ypos, _five)
if index == 5 draw_set_color(c_green) else draw_set_color(c_white)
draw_text(_text_pos + _d*5, _ypos, _six)