/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 165CC74F
/// @DnDArgument : "code" "self.depth = -y$(13_10)$(13_10)//Detect boundries$(13_10)if y >= 750$(13_10){$(13_10)	y = 750$(13_10)}$(13_10)if y <= 340$(13_10){$(13_10)	y = 340$(13_10)}$(13_10)$(13_10)//Detects attack$(13_10)if keyboard_check(vk_space) and state != "attack"$(13_10){$(13_10)	hspeed = 0$(13_10)	vspeed = 0$(13_10)	canMove = false$(13_10)	state = "attack"$(13_10)	substate = "basic"$(13_10)	sprite_index = s_DraffAttack$(13_10)	image_index=0$(13_10)	instance_create_depth(x + sprite_height-1024 + (image_xscale * 250), y-50 , 0, Hitbox)$(13_10)	$(13_10)}$(13_10)$(13_10)if keyboard_check(ord("E")) and state != "attack"$(13_10){$(13_10)	if substate != "ranged"$(13_10)	{$(13_10)		hspeed = 0$(13_10)		vspeed = 0$(13_10)		canMove = false$(13_10)		state = "attack"$(13_10)		substate = "ranged"$(13_10)		sprite_index = s_DraffSpawnPotato$(13_10)		image_index=0$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		hspeed = 0$(13_10)		vspeed = 0$(13_10)		canMove = false$(13_10)		state = "attack"$(13_10)		substate = "rangedThrow"$(13_10)		sprite_index = s_DraffPotatoThrow$(13_10)		image_index=0$(13_10)	}$(13_10)}$(13_10)$(13_10)if image_index > 8 and substate = "rangedThrow"$(13_10){$(13_10)	substate = "rangedThrown"$(13_10)	sack = instance_create_depth(x + (250 * image_xscale) , y-50 , 0, PotatoSack)$(13_10)	sack.direction = 0$(13_10)	sack.speed = image_xscale * 20$(13_10)	sack.image_xscale = image_xscale$(13_10)}$(13_10)$(13_10)//Detect movements$(13_10)if canMove$(13_10){$(13_10)	if keyboard_check(vk_up)$(13_10)	{$(13_10)		vspeed = -10	$(13_10)	}$(13_10)	if keyboard_check(vk_down)$(13_10)	{$(13_10)		vspeed = 10	$(13_10)	}$(13_10)	if keyboard_check(vk_left)$(13_10)	{$(13_10)		hspeed = -10$(13_10)		image_xscale = -1$(13_10)	}$(13_10)	if keyboard_check(vk_right)$(13_10)	{$(13_10)		hspeed = 10$(13_10)		image_xscale = 1$(13_10)	}	$(13_10)}$(13_10)$(13_10)if keyboard_check_released(vk_up) or keyboard_check_released(vk_down) $(13_10){$(13_10)	vspeed = 0$(13_10)}$(13_10)if keyboard_check_released(vk_left) or keyboard_check_released(vk_right) $(13_10){$(13_10)	hspeed = 0$(13_10)}$(13_10)$(13_10)$(13_10)//Animations$(13_10)if (image_index > image_number - 1)$(13_10){$(13_10)	if sprite_index == s_DraffAttack$(13_10)	{$(13_10)		sprite_index = s_DraffIdle$(13_10)		state = "idle"$(13_10)		substate = ""$(13_10)		canMove = true$(13_10)	}$(13_10)	$(13_10)	if sprite_index == s_DraffSpawnPotato$(13_10)	{$(13_10)		sprite_index = s_DraffPotatoStand$(13_10)		state = "idle"$(13_10)		substate = "ranged"$(13_10)		canMove = true	$(13_10)	}$(13_10)	$(13_10)	if sprite_index == s_DraffPotatoThrow$(13_10)	{$(13_10)		sprite_index = s_DraffIdle$(13_10)		state = "idle"$(13_10)		substate = ""$(13_10)		canMove = true		$(13_10)	}$(13_10)}$(13_10)$(13_10)if sprite_index == s_DraffWalk and speed == 0$(13_10){$(13_10)	sprite_index = s_DraffIdle$(13_10)	state = "idle"$(13_10)	substate = ""$(13_10)}$(13_10)$(13_10)if sprite_index == s_DraffIdle and speed != 0$(13_10){$(13_10)	sprite_index = s_DraffWalk$(13_10)	state = "walk"$(13_10)	substate = ""$(13_10)}$(13_10)$(13_10)if sprite_index == s_DraffPotatoWalk and speed == 0$(13_10){$(13_10)	sprite_index = s_DraffPotatoStand$(13_10)	state = "idle"$(13_10)	substate = "ranged"$(13_10)}$(13_10)$(13_10)if sprite_index == s_DraffPotatoStand and speed != 0$(13_10){$(13_10)	sprite_index = s_DraffPotatoWalk$(13_10)	state = "walk"$(13_10)	substate = "ranged"$(13_10)}$(13_10)"
self.depth = -y

//Detect boundries
if y >= 750
{
	y = 750
}
if y <= 340
{
	y = 340
}

//Detects attack
if keyboard_check(vk_space) and state != "attack"
{
	hspeed = 0
	vspeed = 0
	canMove = false
	state = "attack"
	substate = "basic"
	sprite_index = s_DraffAttack
	image_index=0
	instance_create_depth(x + sprite_height-1024 + (image_xscale * 250), y-50 , 0, Hitbox)
	
}

if keyboard_check(ord("E")) and state != "attack"
{
	if substate != "ranged"
	{
		hspeed = 0
		vspeed = 0
		canMove = false
		state = "attack"
		substate = "ranged"
		sprite_index = s_DraffSpawnPotato
		image_index=0
	}
	else
	{
		hspeed = 0
		vspeed = 0
		canMove = false
		state = "attack"
		substate = "rangedThrow"
		sprite_index = s_DraffPotatoThrow
		image_index=0
	}
}

if image_index > 8 and substate = "rangedThrow"
{
	substate = "rangedThrown"
	sack = instance_create_depth(x + (250 * image_xscale) , y-50 , 0, PotatoSack)
	sack.direction = 0
	sack.speed = image_xscale * 20
	sack.image_xscale = image_xscale
}

//Detect movements
if canMove
{
	if keyboard_check(vk_up)
	{
		vspeed = -10	
	}
	if keyboard_check(vk_down)
	{
		vspeed = 10	
	}
	if keyboard_check(vk_left)
	{
		hspeed = -10
		image_xscale = -1
	}
	if keyboard_check(vk_right)
	{
		hspeed = 10
		image_xscale = 1
	}	
}

if keyboard_check_released(vk_up) or keyboard_check_released(vk_down) 
{
	vspeed = 0
}
if keyboard_check_released(vk_left) or keyboard_check_released(vk_right) 
{
	hspeed = 0
}


//Animations
if (image_index > image_number - 1)
{
	if sprite_index == s_DraffAttack
	{
		sprite_index = s_DraffIdle
		state = "idle"
		substate = ""
		canMove = true
	}
	
	if sprite_index == s_DraffSpawnPotato
	{
		sprite_index = s_DraffPotatoStand
		state = "idle"
		substate = "ranged"
		canMove = true	
	}
	
	if sprite_index == s_DraffPotatoThrow
	{
		sprite_index = s_DraffIdle
		state = "idle"
		substate = ""
		canMove = true		
	}
}

if sprite_index == s_DraffWalk and speed == 0
{
	sprite_index = s_DraffIdle
	state = "idle"
	substate = ""
}

if sprite_index == s_DraffIdle and speed != 0
{
	sprite_index = s_DraffWalk
	state = "walk"
	substate = ""
}

if sprite_index == s_DraffPotatoWalk and speed == 0
{
	sprite_index = s_DraffPotatoStand
	state = "idle"
	substate = "ranged"
}

if sprite_index == s_DraffPotatoStand and speed != 0
{
	sprite_index = s_DraffPotatoWalk
	state = "walk"
	substate = "ranged"
}