/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5908C5F2
/// @DnDArgument : "code" "direction = Destro.direction$(13_10)speed = 5*Destro.image_xscale$(13_10)gravity = 1$(13_10)image_xscale = Destro.image_xscale$(13_10)$(13_10)if image_xscale > 0$(13_10)	{$(13_10)		Etrondir = 0$(13_10)	}$(13_10)if image_xscale < 0$(13_10)	{$(13_10)		Etrondir = 180$(13_10)	}"
direction = Destro.direction
speed = 5*Destro.image_xscale
gravity = 1
image_xscale = Destro.image_xscale

if image_xscale > 0
	{
		Etrondir = 0
	}
if image_xscale < 0
	{
		Etrondir = 180
	}