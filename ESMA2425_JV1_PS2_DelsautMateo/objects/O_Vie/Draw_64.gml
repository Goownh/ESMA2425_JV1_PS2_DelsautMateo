var taillew = sprite_get_width(S_Vie)+10;
var tailleh = sprite_get_height(S_Vie);
tailleh -= tailleh/4;
draw_sprite(S_Vie, 0, 0, 0);
draw_text(taillew, tailleh, Hp);