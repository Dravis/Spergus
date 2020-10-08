/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 47BFC7A0
draw_self();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 68E7A6FC
/// @DnDArgument : "var" "healths"
/// @DnDArgument : "op" "2"
if(healths > 0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
	/// @DnDVersion : 1
	/// @DnDHash : 23922AC8
	/// @DnDParent : 68E7A6FC
	/// @DnDArgument : "x1" "-90"
	/// @DnDArgument : "x1_relative" "1"
	/// @DnDArgument : "y1" "-350"
	/// @DnDArgument : "y1_relative" "1"
	/// @DnDArgument : "x2" "80"
	/// @DnDArgument : "x2_relative" "1"
	/// @DnDArgument : "y2" "-360"
	/// @DnDArgument : "y2_relative" "1"
	/// @DnDArgument : "direction" "1"
	/// @DnDArgument : "value" "healths"
	/// @DnDArgument : "mincol" "$FF0000FF"
	/// @DnDArgument : "maxcol" "$FF00FF4C"
	draw_healthbar(x + -90, y + -350, x + 80, y + -360, healths, $FFFFFFFF & $FFFFFF, $FF0000FF & $FFFFFF, $FF00FF4C & $FFFFFF, 1, (($FFFFFFFF>>24) != 0), (($FFFFFFFF>>24) != 0));
}