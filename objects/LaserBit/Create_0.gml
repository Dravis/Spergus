/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 435DDE76
/// @DnDArgument : "code" "if BriseMarc.image_xscale = 1$(13_10){$(13_10)	direction = 0$(13_10)}$(13_10)$(13_10)if BriseMarc.image_xscale = -1$(13_10){$(13_10)	direction = 180$(13_10)}$(13_10)$(13_10)speed=15$(13_10)$(13_10)image_xscale = 2$(13_10)image_yscale = 2$(13_10)$(13_10)depth = -y-200"
if BriseMarc.image_xscale = 1
{
	direction = 0
}

if BriseMarc.image_xscale = -1
{
	direction = 180
}

speed=15

image_xscale = 2
image_yscale = 2

depth = -y-200