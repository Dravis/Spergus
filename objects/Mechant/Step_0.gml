/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 42EBF681
/// @DnDArgument : "code" "self.depth = -y$(13_10)$(13_10)if y > 750$(13_10)	y = 750$(13_10)if y < 340$(13_10)	y = 340$(13_10)$(13_10)if hspeed > 0$(13_10)	lastdir = 1$(13_10)if hspeed < 0 $(13_10)	lastdir = -1$(13_10)$(13_10)direction = point_direction(x, y, Player1_Parent.x, Player1_Parent.y)	$(13_10)$(13_10)if sprite_index == s_AspergeSmallDies$(13_10){$(13_10)	if image_index == 1$(13_10)	{$(13_10)		speed -= 10$(13_10)	}$(13_10)} $(13_10)else$(13_10){$(13_10)	image_xscale = lastdir$(13_10)}$(13_10)$(13_10)$(13_10)if sprite_index == s_BS1Walk$(13_10){$(13_10)	if point_distance(x, y, Player1_Parent.x, Player1_Parent.y) < 250$(13_10)	{$(13_10)		sprite_index = s_BS1Attack$(13_10)		image_index = 0$(13_10)		speed = 0$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		speed = 3$(13_10)		sprite_index = s_BS1Walk$(13_10)		state = "run"$(13_10)	}$(13_10)}$(13_10)$(13_10)if sprite_index = s_BS1Attack and image_index > 5$(13_10){$(13_10)	state = "attack"$(13_10)}$(13_10)$(13_10)//stand$(13_10)if sprite_index == s_BS1Attack$(13_10){$(13_10)	if point_distance(x, y, Player1_Parent.x, Player1_Parent.y) >= 250$(13_10)	{$(13_10)		speed = 3$(13_10)		sprite_index = s_BS1Walk$(13_10)	}$(13_10)}$(13_10)$(13_10)//animation end$(13_10)if (image_index > image_number - 1)$(13_10){$(13_10)	if sprite_index == s_BS1Die$(13_10)	{$(13_10)		if healths <= 0$(13_10)		{$(13_10)			direction = 0$(13_10)			speed = 0$(13_10)			image_index = 20$(13_10)			image_speed = 0$(13_10)			state = "dead"$(13_10)		}$(13_10)		else$(13_10)		{$(13_10)			sprite_index = s_BS1Walk$(13_10)			image_index = 0$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)if state == "dead"$(13_10){$(13_10)	drop = instance_create_depth(x,y,-2,Potion)$(13_10)	drop.sprite_index = s_healthPotion$(13_10)	state = "dispawning"$(13_10)}$(13_10)$(13_10)if state == "dispawning"$(13_10){$(13_10)	image_alpha -= 0.01$(13_10)}$(13_10)$(13_10)if image_alpha <= 0$(13_10){$(13_10)	instance_destroy()$(13_10)}"
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


if sprite_index == s_BS1Walk
{
	if point_distance(x, y, Player1_Parent.x, Player1_Parent.y) < 250
	{
		sprite_index = s_BS1Attack
		image_index = 0
		speed = 0
	}
	else
	{
		speed = 3
		sprite_index = s_BS1Walk
		state = "run"
	}
}

if sprite_index = s_BS1Attack and image_index > 5
{
	state = "attack"
}

//stand
if sprite_index == s_BS1Attack
{
	if point_distance(x, y, Player1_Parent.x, Player1_Parent.y) >= 250
	{
		speed = 3
		sprite_index = s_BS1Walk
	}
}

//animation end
if (image_index > image_number - 1)
{
	if sprite_index == s_BS1Die
	{
		if healths <= 0
		{
			direction = 0
			speed = 0
			image_index = 20
			image_speed = 0
			state = "dead"
		}
		else
		{
			sprite_index = s_BS1Walk
			image_index = 0
		}
	}
}

if state == "dead"
{
	drop = instance_create_depth(x,y,-2,Potion)
	drop.sprite_index = s_healthPotion
	state = "dispawning"
}

if state == "dispawning"
{
	image_alpha -= 0.01
}

if image_alpha <= 0
{
	instance_destroy()
}