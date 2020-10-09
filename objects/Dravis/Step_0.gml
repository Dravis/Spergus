/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 165CC74F
/// @DnDArgument : "code" "self.depth = -y$(13_10)$(13_10)//Detect boundries$(13_10)if y >= 750$(13_10){$(13_10)	y = 750$(13_10)}$(13_10)if y <= 340$(13_10){$(13_10)	y = 340$(13_10)}$(13_10)$(13_10)//Detects attack$(13_10)if keyboard_check(vk_space) and sprite_index != s_DravAttack$(13_10){$(13_10)	hspeed = 0$(13_10)	vspeed = 0$(13_10)	canMove = false$(13_10)	image_index = 0$(13_10)	sprite_index = s_DravAttack$(13_10)	instance_create_depth(x + sprite_height-1024 + (image_xscale * 250), y-50 , 0, Hitbox)$(13_10)}$(13_10)$(13_10)//Detect movements$(13_10)if canMove$(13_10){$(13_10)	if keyboard_check(vk_up)$(13_10)	{$(13_10)		vspeed = -10	$(13_10)	}$(13_10)	if keyboard_check(vk_down)$(13_10)	{$(13_10)		vspeed = 10	$(13_10)	}$(13_10)	if keyboard_check(vk_left)$(13_10)	{$(13_10)		hspeed = -10$(13_10)		image_xscale = -1$(13_10)	}$(13_10)	if keyboard_check(vk_right)$(13_10)	{$(13_10)		hspeed = 10$(13_10)		image_xscale = 1$(13_10)	}	$(13_10)}$(13_10)$(13_10)if keyboard_check_released(vk_up) or keyboard_check_released(vk_down) $(13_10){$(13_10)	vspeed = 0$(13_10)}$(13_10)if keyboard_check_released(vk_left) or keyboard_check_released(vk_right) $(13_10){$(13_10)	hspeed = 0$(13_10)}$(13_10)$(13_10)$(13_10)//Animations$(13_10)if (sprite_index == s_DravAttack and image_index > image_number - 1)$(13_10){$(13_10)	sprite_index = s_DravStand$(13_10)	canMove = true$(13_10)}$(13_10)$(13_10)if sprite_index == s_DravRuns and speed == 0$(13_10){$(13_10)	sprite_index = s_DravStand$(13_10)}$(13_10)$(13_10)if sprite_index == s_DravStand and speed != 0$(13_10){$(13_10)	sprite_index = s_DravRuns$(13_10)}$(13_10)"
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
if keyboard_check(vk_space) and sprite_index != s_DravAttack
{
	hspeed = 0
	vspeed = 0
	canMove = false
	image_index = 0
	sprite_index = s_DravAttack
	instance_create_depth(x + sprite_height-1024 + (image_xscale * 250), y-50 , 0, Hitbox)
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
if (sprite_index == s_DravAttack and image_index > image_number - 1)
{
	sprite_index = s_DravStand
	canMove = true
}

if sprite_index == s_DravRuns and speed == 0
{
	sprite_index = s_DravStand
}

if sprite_index == s_DravStand and speed != 0
{
	sprite_index = s_DravRuns
}