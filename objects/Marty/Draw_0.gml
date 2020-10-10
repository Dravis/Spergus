/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 7A872F78
draw_self();

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 0DF762B9
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Shooting: ""
/// @DnDArgument : "var" "Shooting"
draw_text(x + 0, y + 0, string("Shooting: ") + string(Shooting));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 4C54CE7A
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "50"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""CanStartShoot: ""
/// @DnDArgument : "var" "CanStartShoot"
draw_text(x + 0, y + 50, string("CanStartShoot: ") + string(CanStartShoot));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 6F54F687
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "100"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Sprite_Index: ""
/// @DnDArgument : "var" "Sprite_index"
draw_text(x + 0, y + 100, string("Sprite_Index: ") + string(Sprite_index));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 659772E2
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "150"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Speed: ""
/// @DnDArgument : "var" "speed"
draw_text(x + 0, y + 150, string("Speed: ") + string(speed));