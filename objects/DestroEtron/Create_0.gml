/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0DF9DFF6
/// @DnDArgument : "code" "$(13_10)xscale = irandom_range(-10,15)$(13_10)yscale = irandom_range(-10,15)$(13_10)$(13_10)if Destro.image_xscale == 1$(13_10)	{$(13_10)direction = 0$(13_10)	}$(13_10)if Destro.image_xscale == -1$(13_10)	{$(13_10)direction = 180$(13_10)	}$(13_10)speed = 30$(13_10)gravity= 0.5$(13_10)rotspeed = irandom_range(0,-6)"

xscale = irandom_range(-10,15)
yscale = irandom_range(-10,15)

if Destro.image_xscale == 1
	{
direction = 0
	}
if Destro.image_xscale == -1
	{
direction = 180
	}
speed = 30
gravity= 0.5
rotspeed = irandom_range(0,-6)