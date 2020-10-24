/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2228B978
/// @DnDArgument : "code" "depth = -y$(13_10)$(13_10)if Draffeurd.state = "revole"$(13_10){$(13_10)	x = Draffeurd.x + 250*Draffeurd.image_xscale$(13_10)	y = Draffeurd.y +200$(13_10)	image_angle = 90$(13_10)	image_xscale = 0.5$(13_10)}$(13_10)$(13_10)if Draffeurd.state = "revole" and Draffeurd.image_index = Draffeurd.image_number-1$(13_10){$(13_10)	instance_destroy()$(13_10)}"
depth = -y

if Draffeurd.state = "revole"
{
	x = Draffeurd.x + 250*Draffeurd.image_xscale
	y = Draffeurd.y +200
	image_angle = 90
	image_xscale = 0.5
}

if Draffeurd.state = "revole" and Draffeurd.image_index = Draffeurd.image_number-1
{
	instance_destroy()
}