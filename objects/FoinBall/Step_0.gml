/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 66366FCF
/// @DnDArgument : "code" "if boulepower > 1$(13_10){$(13_10)image_xscale = boulepower/30$(13_10)image_yscale = boulepower/30$(13_10)}$(13_10)$(13_10)else$(13_10)$(13_10){$(13_10)image_xscale = 0.1$(13_10)image_yscale = 0.1$(13_10)}$(13_10)depth = -y-200$(13_10)$(13_10)if speed = 0$(13_10){$(13_10)image_angle -= 10$(13_10)}$(13_10)else$(13_10){$(13_10)image_angle += 3$(13_10)}$(13_10)$(13_10)if boulepower > 19$(13_10){$(13_10)image_blend = c_fuchsia$(13_10)}"
if boulepower > 1
{
image_xscale = boulepower/30
image_yscale = boulepower/30
}

else

{
image_xscale = 0.1
image_yscale = 0.1
}
depth = -y-200

if speed = 0
{
image_angle -= 10
}
else
{
image_angle += 3
}

if boulepower > 19
{
image_blend = c_fuchsia
}