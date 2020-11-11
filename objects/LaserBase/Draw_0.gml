/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 0CA0683D
draw_self();

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 763714B9
/// @DnDArgument : "x" "x+25"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "rot" "3"
/// @DnDArgument : "rot_relative" "1"
/// @DnDArgument : "sprite" "s_LaserBase"
/// @DnDSaveInfo : "sprite" "s_LaserBase"
draw_sprite_ext(s_LaserBase, 0, x+25, y + 0, 1, 1, image_angle + 3, $FFFFFF & $ffffff, 1);