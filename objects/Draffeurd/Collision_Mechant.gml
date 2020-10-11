/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6A7FE0A7
/// @DnDArgument : "code" "if other.state == "attack" and !isHit$(13_10){$(13_10)	isHit = true$(13_10)	image_alpha = 0.8$(13_10)	hp -= 8$(13_10)	alarm[1] = 50$(13_10)	alarm[10] = 5$(13_10)	//direction = point_direction(x,y,other.x,other.y)$(13_10)	//speed = -10$(13_10)}"
if other.state == "attack" and !isHit
{
	isHit = true
	image_alpha = 0.8
	hp -= 8
	alarm[1] = 50
	alarm[10] = 5
	//direction = point_direction(x,y,other.x,other.y)
	//speed = -10
}