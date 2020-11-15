/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 713CC3FB
/// @DnDArgument : "code" "if sprite_index != s_DravSmashStomp and sprite_index != s_DravSmashJump$(13_10){$(13_10)self.depth = -y$(13_10)}$(13_10)else$(13_10){$(13_10)depth = -y -1000$(13_10)}$(13_10)//Detect boundries$(13_10)if sprite_index != s_DravSmashStomp and sprite_index != s_DravSmashJump$(13_10){$(13_10)if y >= 800$(13_10){$(13_10)	y = 800$(13_10)}$(13_10)if y <= 500$(13_10){$(13_10)	y = 500$(13_10)}$(13_10)$(13_10)if x > camera_get_view_x(view_camera[0])+1920$(13_10)	{$(13_10)	x = camera_get_view_x(view_camera[0])+1920$(13_10)	}$(13_10)	$(13_10)if x < camera_get_view_x(view_camera[0])$(13_10)	{$(13_10)	x = camera_get_view_x(view_camera[0])$(13_10)	}$(13_10)}$(13_10)//Detect Inventory$(13_10)if keyboard_check(selectbtn)$(13_10){$(13_10)	inventoryObj.isActivated = true$(13_10)	inventoryObj.x = x$(13_10)	inventoryObj.y = y$(13_10)}$(13_10)else$(13_10){$(13_10)	inventoryObj.isActivated = false$(13_10)}$(13_10)$(13_10)$(13_10)//Detect Movement$(13_10)if PlayerNumber != 2 and stance != "skate"$(13_10){$(13_10)if (canMove and !isStunned) or isMovingTarget$(13_10){$(13_10)	if !isMovingTarget$(13_10)	{$(13_10)		if keyboard_check(upbtn)$(13_10)		{$(13_10)			vspeed = -12	$(13_10)		}$(13_10)		if keyboard_check(downbtn)$(13_10)		{$(13_10)			vspeed = 12	$(13_10)		}$(13_10)		if keyboard_check(leftbtn)$(13_10)		{$(13_10)			hspeed = -12$(13_10)			image_xscale = -1$(13_10)		}$(13_10)		if keyboard_check(rightbtn)$(13_10)		{$(13_10)			hspeed = 12$(13_10)			image_xscale = 1$(13_10)		}$(13_10)	} else$(13_10)		{$(13_10)		if keyboard_check(upbtn)$(13_10)		{$(13_10)			targetImage.vspeed = -12	$(13_10)		}$(13_10)		if keyboard_check(downbtn)$(13_10)		{$(13_10)			targetImage.vspeed = 12$(13_10)		}$(13_10)		if keyboard_check(leftbtn)$(13_10)		{$(13_10)			targetImage.hspeed = -12			$(13_10)		}$(13_10)		if keyboard_check(rightbtn)$(13_10)		{$(13_10)			targetImage.hspeed = 12$(13_10)		}$(13_10)	}$(13_10)	$(13_10)}$(13_10)$(13_10)if keyboard_check_released(upbtn) or keyboard_check_released(downbtn) $(13_10){$(13_10)	vspeed = 0$(13_10)}$(13_10)if keyboard_check_released(leftbtn) or keyboard_check_released(rightbtn) $(13_10){$(13_10)	hspeed = 0$(13_10)}$(13_10)}$(13_10)if isStunned$(13_10){$(13_10)	if speed < 0$(13_10)		speed += 0.5$(13_10)	else$(13_10)		speed = 0$(13_10)}"
if sprite_index != s_DravSmashStomp and sprite_index != s_DravSmashJump
{
self.depth = -y
}
else
{
depth = -y -1000
}
//Detect boundries
if sprite_index != s_DravSmashStomp and sprite_index != s_DravSmashJump
{
if y >= 800
{
	y = 800
}
if y <= 500
{
	y = 500
}

if x > camera_get_view_x(view_camera[0])+1920
	{
	x = camera_get_view_x(view_camera[0])+1920
	}
	
if x < camera_get_view_x(view_camera[0])
	{
	x = camera_get_view_x(view_camera[0])
	}
}
//Detect Inventory
if keyboard_check(selectbtn)
{
	inventoryObj.isActivated = true
	inventoryObj.x = x
	inventoryObj.y = y
}
else
{
	inventoryObj.isActivated = false
}


//Detect Movement
if PlayerNumber != 2 and stance != "skate"
{
if (canMove and !isStunned) or isMovingTarget
{
	if !isMovingTarget
	{
		if keyboard_check(upbtn)
		{
			vspeed = -12	
		}
		if keyboard_check(downbtn)
		{
			vspeed = 12	
		}
		if keyboard_check(leftbtn)
		{
			hspeed = -12
			image_xscale = -1
		}
		if keyboard_check(rightbtn)
		{
			hspeed = 12
			image_xscale = 1
		}
	} else
		{
		if keyboard_check(upbtn)
		{
			targetImage.vspeed = -12	
		}
		if keyboard_check(downbtn)
		{
			targetImage.vspeed = 12
		}
		if keyboard_check(leftbtn)
		{
			targetImage.hspeed = -12			
		}
		if keyboard_check(rightbtn)
		{
			targetImage.hspeed = 12
		}
	}
	
}

if keyboard_check_released(upbtn) or keyboard_check_released(downbtn) 
{
	vspeed = 0
}
if keyboard_check_released(leftbtn) or keyboard_check_released(rightbtn) 
{
	hspeed = 0
}
}
if isStunned
{
	if speed < 0
		speed += 0.5
	else
		speed = 0
}