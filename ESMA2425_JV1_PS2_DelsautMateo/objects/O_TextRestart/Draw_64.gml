/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 075727BB
/// @DnDArgument : "color" "$FF00008C"
draw_set_colour($FF00008C & $ffffff);
var l075727BB_0=($FF00008C >> 24);
draw_set_alpha(l075727BB_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 13CEB0C8
/// @DnDArgument : "font" "Titre"
/// @DnDSaveInfo : "font" "Titre"
draw_set_font(Titre);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 31689FD0
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "Mort"
if(room == Mort){	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 72221336
	/// @DnDParent : 31689FD0
	/// @DnDArgument : "x" "20"
	/// @DnDArgument : "y" "60"
	/// @DnDArgument : "caption" ""Vous avez echouer...\nEtes vous pret pour\nune nouvelle tentative ?\nCliquer pour relancer""
	draw_text(20, 60, string("Vous avez echouer...\nEtes vous pret pour\nune nouvelle tentative ?\nCliquer pour relancer") + "");}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 70F40362
else{	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 629415B7
	/// @DnDParent : 70F40362
	/// @DnDArgument : "x" "20"
	/// @DnDArgument : "y" "60"
	/// @DnDArgument : "caption" ""Vous avez reussi a stopper l'IA\nBien joué !\nCliquer pour quitter""
	draw_text(20, 60, string("Vous avez reussi a stopper l'IA\nBien joué !\nCliquer pour quitter") + "");}