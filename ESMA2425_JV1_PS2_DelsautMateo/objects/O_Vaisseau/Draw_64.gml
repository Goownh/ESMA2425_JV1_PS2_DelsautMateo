/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 3C8FF629
/// @DnDArgument : "color" "$FF00008C"
draw_set_colour($FF00008C & $ffffff);
var l3C8FF629_0=($FF00008C >> 24);
draw_set_alpha(l3C8FF629_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 5E365CC2
/// @DnDArgument : "font" "Titre"
/// @DnDSaveInfo : "font" "Titre"
draw_set_font(Titre);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 35A5A845
/// @DnDArgument : "x" "room_width/2-300"
/// @DnDArgument : "y" "80"
/// @DnDArgument : "caption" ""Station Zero""
draw_text(room_width/2-300, 80, string("Station Zero") + "");