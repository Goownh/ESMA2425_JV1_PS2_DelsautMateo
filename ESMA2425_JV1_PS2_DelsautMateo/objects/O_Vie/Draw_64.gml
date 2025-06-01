

var taillew = sprite_get_width(S_Vie)+30;
var tailleh = sprite_get_height(S_Vie);
tailleh -= tailleh/4;


draw_sprite_ext(S_Vie, 0, 20, 20, 1.2, 1.2, 0, #FFFFFF, 1);

draw_set_colour($FF3AFF6B & $ffffff);
draw_set_font(Font2);
draw_text(taillew, tailleh, Hp);
