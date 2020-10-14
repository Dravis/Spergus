/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6A7FE0A7
/// @DnDArgument : "code" "if other.state == "attack" and !isHit$(13_10){$(13_10)	isHit = true$(13_10)	isStunned = true$(13_10)	image_alpha = 0.8$(13_10)	hp -= 8$(13_10)	alarm[1] = 80$(13_10)	alarm[2] = 30$(13_10)	alarm[10] = 10$(13_10)	direction = point_direction(x,y,other.x,other.y)$(13_10)	speed = -15$(13_10)}"
if other.state == "attack" and !isHit
{
	isHit = true
	isStunned = true
	image_alpha = 0.8
	hp -= 8
	alarm[1] = 80
	alarm[2] = 30
	alarm[10] = 10
	direction = point_direction(x,y,other.x,other.y)
	speed = -15
}