/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 42EBF681
/// @DnDArgument : "code" "self.depth = -y$(13_10)$(13_10)if y >800$(13_10)	y = 800$(13_10)if y < 500$(13_10)	y = 500$(13_10)$(13_10)if hspeed > 0$(13_10)	lastdir = 1$(13_10)if hspeed < 0 $(13_10)	lastdir = -1$(13_10)$(13_10)if behaviornumb = 1$(13_10){$(13_10)behavior = "stand"$(13_10)}$(13_10)else$(13_10){$(13_10)behavior = "run"$(13_10)}$(13_10)$(13_10)$(13_10)if behavior = "run"$(13_10){$(13_10)direction = point_direction(x, y, x+xdest, y+ydest)$(13_10)speed = 10$(13_10)}$(13_10)$(13_10)if behavior = "stand"$(13_10){$(13_10)		speed = 0$(13_10)		sprite_index = s_BS2Idle$(13_10)	}$(13_10)$(13_10)if sprite_index == s_BS2Die$(13_10){$(13_10)	if image_index == 1$(13_10)	{$(13_10)		speed -= 10$(13_10)	}$(13_10)} $(13_10)else$(13_10){$(13_10)	image_xscale = lastdir$(13_10)}$(13_10)$(13_10)$(13_10)//if sprite_index == s_BS2Run$(13_10)//{$(13_10)//	if point_distance(x, y, Player1_Parent.x, Player1_Parent.y) < 250$(13_10)	//{$(13_10)//		sprite_index = s_BS1Attack$(13_10)//		image_index = 0$(13_10)//		speed = 0$(13_10)//	}$(13_10)if speed != 0$(13_10)	{$(13_10)		sprite_index = s_BS2Run$(13_10)		state = "run"$(13_10)	}$(13_10)//}$(13_10)$(13_10)if sprite_index = s_BS2Attack and image_index > 12$(13_10){$(13_10)	state = "attack"$(13_10)}$(13_10)$(13_10)//stand$(13_10)//if sprite_index == s_BS2Attack$(13_10)//{$(13_10)//	if point_distance(x, y, Player1_Parent.x, Player1_Parent.y) >= 250$(13_10)//	{$(13_10)//		speed = 3$(13_10)//		sprite_index = s_BS1Walk$(13_10)//	}$(13_10)//}$(13_10)$(13_10)//animation end$(13_10)if (image_index > image_number - 1)$(13_10){$(13_10)	if sprite_index == s_BS2Die$(13_10)	{$(13_10)		if healths <= 0$(13_10)		{$(13_10)			direction = 0$(13_10)			speed = 0$(13_10)			image_index = 20$(13_10)			image_speed = 0$(13_10)			state = "dead"$(13_10)		}$(13_10)		else$(13_10)		{$(13_10)			sprite_index = s_BS2Run$(13_10)			image_index = 0$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)if state == "dead"$(13_10){$(13_10)	drop = instance_create_depth(x,y+200,-2,Potion)$(13_10)	drop.sprite_index = s_healthPotion$(13_10)	state = "dispawning"$(13_10)}$(13_10)$(13_10)if state == "dispawning"$(13_10){$(13_10)	image_alpha -= 0.01$(13_10)}$(13_10)$(13_10)if image_alpha <= 0$(13_10){$(13_10)	instance_destroy()$(13_10)}"
self.depth = -y

if y >800
	y = 800
if y < 500
	y = 500

if hspeed > 0
	lastdir = 1
if hspeed < 0 
	lastdir = -1

if behaviornumb = 1
{
behavior = "stand"
}
else
{
behavior = "run"
}


if behavior = "run"
{
direction = point_direction(x, y, x+xdest, y+ydest)
speed = 10
}

if behavior = "stand"
{
		speed = 0
		sprite_index = s_BS2Idle
	}

if sprite_index == s_BS2Die
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


//if sprite_index == s_BS2Run
//{
//	if point_distance(x, y, Player1_Parent.x, Player1_Parent.y) < 250
	//{
//		sprite_index = s_BS1Attack
//		image_index = 0
//		speed = 0
//	}
if speed != 0
	{
		sprite_index = s_BS2Run
		state = "run"
	}
//}

if sprite_index = s_BS2Attack and image_index > 12
{
	state = "attack"
}

//stand
//if sprite_index == s_BS2Attack
//{
//	if point_distance(x, y, Player1_Parent.x, Player1_Parent.y) >= 250
//	{
//		speed = 3
//		sprite_index = s_BS1Walk
//	}
//}

//animation end
if (image_index > image_number - 1)
{
	if sprite_index == s_BS2Die
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
			sprite_index = s_BS2Run
			image_index = 0
		}
	}
}

if state == "dead"
{
	drop = instance_create_depth(x,y+200,-2,Potion)
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