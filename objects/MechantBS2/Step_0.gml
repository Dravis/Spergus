/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 42EBF681
/// @DnDArgument : "code" "self.depth = -y$(13_10)$(13_10)if y >800$(13_10)	y = 800$(13_10)if y < 500$(13_10)	y = 500$(13_10)$(13_10)if x > cible.x$(13_10)	lastdir = -1$(13_10)if x < cible.x $(13_10)	lastdir = 1$(13_10)$(13_10)if HasBottle = true$(13_10)		{ $(13_10)		RunSprite = s_BS2Run$(13_10)		IdleSprite = s_BS2Idle	$(13_10)		}$(13_10)else$(13_10)	{$(13_10)		RunSprite = s_BS2RunNoBottle$(13_10)		IdleSprite = s_BS2IdleNoBottle$(13_10)	}$(13_10)$(13_10)if point_distance(x, y, Player1_Parent.x, Player1_Parent.y) < 800$(13_10)	{$(13_10)		$(13_10)	if canAttack & HasBottle$(13_10)		{$(13_10)		sprite_index = s_BS2Attack$(13_10)		speed = 0$(13_10)		behavior = "attack"$(13_10)		alarm[2] = 100$(13_10)		behaviornumb = 0$(13_10)		}$(13_10)	}$(13_10)$(13_10)$(13_10)if behavior != ""$(13_10){$(13_10)if behaviornumb = 1$(13_10){$(13_10)behavior = "stand"$(13_10)}$(13_10)if behaviornumb > 1$(13_10){$(13_10)behavior = "run"$(13_10)}$(13_10)}$(13_10)$(13_10)$(13_10)if behavior = "run"$(13_10){$(13_10)	if point_distance(x,y,Player1_Parent.x,Player1_Parent.y)  > 600$(13_10)		{$(13_10)direction = point_direction(x, y, cible.x, y+ydest)$(13_10)speed = 10$(13_10)sprite_index = RunSprite	$(13_10)		}$(13_10)}$(13_10)$(13_10)if behavior = "stand"$(13_10){$(13_10)		speed = 0$(13_10)		sprite_index = IdleSprite$(13_10)	}$(13_10)$(13_10)if sprite_index == s_BS2Die$(13_10){$(13_10)	if image_index == 1$(13_10)	{$(13_10)		speed -= 10$(13_10)	}$(13_10)} $(13_10)else$(13_10){$(13_10)	image_xscale = lastdir$(13_10)}$(13_10)$(13_10)$(13_10)//if sprite_index == s_BS2Run$(13_10)//{$(13_10)//	if point_distance(x, y, Player1_Parent.x, Player1_Parent.y) < 250$(13_10)	//{$(13_10)//		sprite_index = s_BS1Attack$(13_10)//		image_index = 0$(13_10)//		speed = 0$(13_10)//	}$(13_10)//}$(13_10)$(13_10)if sprite_index = s_BS2Attack and image_index = 5$(13_10){$(13_10)	instance_create_depth(x,y,-y,Bouteille)$(13_10)	canAttack = false$(13_10)	HasBottle = false$(13_10)	alarm[4] = 120$(13_10)}$(13_10)$(13_10)//stand$(13_10)//if sprite_index == s_BS2Attack$(13_10)//{$(13_10)//	if point_distance(x, y, Player1_Parent.x, Player1_Parent.y) >= 250$(13_10)//	{$(13_10)//		speed = 3$(13_10)//		sprite_index = s_BS1Walk$(13_10)//	}$(13_10)//}$(13_10)$(13_10)//animation end$(13_10)if (image_index > image_number - 1)$(13_10){$(13_10)	if sprite_index == s_BS2Attack$(13_10)	{$(13_10)		xdest = random_range(-500,500)$(13_10)		ydest = random_range(-200,200)$(13_10)		behaviornumb = irandom_range(1,3)$(13_10)		sprite_index = IdleSprite$(13_10)	}$(13_10)	$(13_10)	if sprite_index == s_BS2Die$(13_10)	{$(13_10)		if healths <= 0$(13_10)		{$(13_10)			direction = 0$(13_10)			speed = 0$(13_10)			image_index = 20$(13_10)			image_speed = 0$(13_10)			state = "dead"$(13_10)			sprite_index = s_BS2Die$(13_10)		}$(13_10)		else$(13_10)		{$(13_10)			sprite_index = RunSprite$(13_10)			image_index = 0$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)if state == "dead"$(13_10){$(13_10)	drop = instance_create_depth(x,y+200,-2,Potion)$(13_10)	drop.sprite_index = s_healthPotion$(13_10)	state = "dispawning"$(13_10)	behavior = ""$(13_10)	alarm[2] = 500$(13_10)}$(13_10)$(13_10)if state == "dispawning"$(13_10){$(13_10)	image_alpha -= 0.01$(13_10)}$(13_10)$(13_10)if image_alpha <= 0$(13_10){$(13_10)	instance_destroy()$(13_10)}"
self.depth = -y

if y >800
	y = 800
if y < 500
	y = 500

if x > cible.x
	lastdir = -1
if x < cible.x 
	lastdir = 1

if HasBottle = true
		{ 
		RunSprite = s_BS2Run
		IdleSprite = s_BS2Idle	
		}
else
	{
		RunSprite = s_BS2RunNoBottle
		IdleSprite = s_BS2IdleNoBottle
	}

if point_distance(x, y, Player1_Parent.x, Player1_Parent.y) < 800
	{
		
	if canAttack & HasBottle
		{
		sprite_index = s_BS2Attack
		speed = 0
		behavior = "attack"
		alarm[2] = 100
		behaviornumb = 0
		}
	}


if behavior != ""
{
if behaviornumb = 1
{
behavior = "stand"
}
if behaviornumb > 1
{
behavior = "run"
}
}


if behavior = "run"
{
	if point_distance(x,y,Player1_Parent.x,Player1_Parent.y)  > 600
		{
direction = point_direction(x, y, cible.x, y+ydest)
speed = 10
sprite_index = RunSprite	
		}
}

if behavior = "stand"
{
		speed = 0
		sprite_index = IdleSprite
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
//}

if sprite_index = s_BS2Attack and image_index = 5
{
	instance_create_depth(x,y,-y,Bouteille)
	canAttack = false
	HasBottle = false
	alarm[4] = 120
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
	if sprite_index == s_BS2Attack
	{
		xdest = random_range(-500,500)
		ydest = random_range(-200,200)
		behaviornumb = irandom_range(1,3)
		sprite_index = IdleSprite
	}
	
	if sprite_index == s_BS2Die
	{
		if healths <= 0
		{
			direction = 0
			speed = 0
			image_index = 20
			image_speed = 0
			state = "dead"
			sprite_index = s_BS2Die
		}
		else
		{
			sprite_index = RunSprite
			image_index = 0
		}
	}
}

if state == "dead"
{
	drop = instance_create_depth(x,y+200,-2,Potion)
	drop.sprite_index = s_healthPotion
	state = "dispawning"
	behavior = ""
	alarm[2] = 500
}

if state == "dispawning"
{
	image_alpha -= 0.01
}

if image_alpha <= 0
{
	instance_destroy()
}