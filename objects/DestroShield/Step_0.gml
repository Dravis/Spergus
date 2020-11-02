/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4719A747
/// @DnDArgument : "code" "depth = -y-20$(13_10)x = Destro.x+(50*Destro.image_xscale)$(13_10)y= Destro.y$(13_10)image_xscale = Destro.image_xscale$(13_10)$(13_10)if Destro.substate != "shield"$(13_10){$(13_10)instance_destroy()$(13_10)}"
depth = -y-20
x = Destro.x+(50*Destro.image_xscale)
y= Destro.y
image_xscale = Destro.image_xscale

if Destro.substate != "shield"
{
instance_destroy()
}