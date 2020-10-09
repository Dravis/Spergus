/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 42EBF681
/// @DnDArgument : "code" "self.depth = -y$(13_10)$(13_10)if y > 750$(13_10)	y = 750$(13_10)if y < 340$(13_10)	y = 340$(13_10)$(13_10)if hspeed > 0$(13_10)	lastdir = 1$(13_10)if hspeed < 0 $(13_10)	lastdir = -1$(13_10)$(13_10)direction = point_direction(x, y, Player1_Parent.x, Player1_Parent.y)	$(13_10)$(13_10)if sprite_index == s_AspergeSmallDies$(13_10){$(13_10)	if image_index == 1$(13_10)	{$(13_10)		speed -= 10$(13_10)	}$(13_10)} $(13_10)else$(13_10){$(13_10)	image_xscale = lastdir$(13_10)}$(13_10)$(13_10)if sprite_index == s_AspergeSmallRun$(13_10){$(13_10)	if point_distance(x, y, Player1_Parent.x, Player1_Parent.y) < 250$(13_10)	{$(13_10)			sprite_index = s_AspergeSmallAttack$(13_10)			speed = 0	$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		speed = 3$(13_10)		sprite_index = s_AspergeSmallRun$(13_10)	}$(13_10)}$(13_10)$(13_10)//stand$(13_10)if sprite_index == s_AspergeSmallAttack$(13_10){$(13_10)	if point_distance(x, y, Player1_Parent.x, Player1_Parent.y) >= 250$(13_10)	{$(13_10)		speed = 3$(13_10)		sprite_index = s_AspergeSmallRun	$(13_10)	}$(13_10)}"
self.depth = -y

if y > 750
	y = 750
if y < 340
	y = 340

if hspeed > 0
	lastdir = 1
if hspeed < 0 
	lastdir = -1

direction = point_direction(x, y, Player1_Parent.x, Player1_Parent.y)	

if sprite_index == s_AspergeSmallDies
{
	if image_index == 1
	{
		speed -= 10
	}
} 
else
{
	image_xscale = lastdir
}

if sprite_index == s_AspergeSmallRun
{
	if point_distance(x, y, Player1_Parent.x, Player1_Parent.y) < 250
	{
			sprite_index = s_AspergeSmallAttack
			speed = 0	
	}
	else
	{
		speed = 3
		sprite_index = s_AspergeSmallRun
	}
}

//stand
if sprite_index == s_AspergeSmallAttack
{
	if point_distance(x, y, Player1_Parent.x, Player1_Parent.y) >= 250
	{
		speed = 3
		sprite_index = s_AspergeSmallRun	
	}
}