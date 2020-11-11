/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 165CC74F
/// @DnDArgument : "code" "self.depth = -y$(13_10)$(13_10)//Detect boundries$(13_10)if y >= 800$(13_10){$(13_10)	y = 800$(13_10)}$(13_10)if y <= 500$(13_10){$(13_10)	y = 500$(13_10)}$(13_10)$(13_10)if keyboard_check(selectbtn)$(13_10){$(13_10)	inventoryObj.isActivated = true$(13_10)	inventoryObj.x = x$(13_10)	inventoryObj.y = y$(13_10)}$(13_10)else$(13_10){$(13_10)	inventoryObj.isActivated = false$(13_10)}$(13_10)$(13_10)//Detect movements$(13_10)if (canMove and !isStunned) or isMovingTarget$(13_10){$(13_10)	if !isMovingTarget$(13_10)	{$(13_10)		if keyboard_check(upbtn)$(13_10)		{$(13_10)			vspeed = -10	$(13_10)		}$(13_10)		if keyboard_check(downbtn)$(13_10)		{$(13_10)			vspeed = 10	$(13_10)		}$(13_10)		if keyboard_check(leftbtn)$(13_10)		{$(13_10)			hspeed = -10$(13_10)			image_xscale = -1$(13_10)		}$(13_10)		if keyboard_check(rightbtn)$(13_10)		{$(13_10)			hspeed = 10$(13_10)			image_xscale = 1$(13_10)		}$(13_10)	} else$(13_10)		{$(13_10)		if keyboard_check(upbtn)$(13_10)		{$(13_10)			targetImage.vspeed = -10	$(13_10)		}$(13_10)		if keyboard_check(downbtn)$(13_10)		{$(13_10)			targetImage.vspeed = 10	$(13_10)		}$(13_10)		if keyboard_check(leftbtn)$(13_10)		{$(13_10)			targetImage.hspeed = -10			$(13_10)		}$(13_10)		if keyboard_check(rightbtn)$(13_10)		{$(13_10)			targetImage.hspeed = 10$(13_10)		}$(13_10)	}$(13_10)	$(13_10)}$(13_10)$(13_10)$(13_10)if keyboard_check_released(upbtn) or keyboard_check_released(downbtn) $(13_10){$(13_10)	vspeed = 0$(13_10)}$(13_10)if keyboard_check_released(leftbtn) or keyboard_check_released(rightbtn) $(13_10){$(13_10)	hspeed = 0$(13_10)}$(13_10)$(13_10)if isStunned$(13_10){$(13_10)	if speed < 0$(13_10)		speed += 0.5$(13_10)	else$(13_10)		speed = 0$(13_10)}$(13_10)$(13_10)//Detects attack$(13_10)if keyboard_check(rangedbtn) and state != "attack" and substate == ""$(13_10){$(13_10)	hspeed = 0$(13_10)	vspeed = 0$(13_10)	canMove = false$(13_10)	state = "attack"$(13_10)	substate = "ranged"$(13_10)	sprite_index = s_PMLazer$(13_10)	image_index=0$(13_10)}$(13_10)$(13_10)$(13_10)//Detects attack$(13_10)if keyboard_check(basicbtn) and state != "attack" and substate == ""$(13_10){$(13_10)	hspeed = 0$(13_10)	vspeed = 0$(13_10)	canMove = false$(13_10)	state = "attack"$(13_10)	substate = "basic"$(13_10)	sprite_index = s_PMPunch$(13_10)	image_index = 0$(13_10)	$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)//Animations$(13_10)if (image_index > image_number - 1)$(13_10){$(13_10)	if sprite_index == s_PMPunch$(13_10)	{$(13_10)		if keyboard_check(basicbtn) = false$(13_10)		{$(13_10)		sprite_index = s_PMIdle$(13_10)		state = "idle"$(13_10)		substate = ""$(13_10)		canMove = true$(13_10)		}$(13_10)		instance_create_depth(x + sprite_height-768 + (image_xscale * 175), y-50 ,-y, HitboxPM)$(13_10)		$(13_10)	}$(13_10)	$(13_10)	if sprite_index == s_DraffSpawnPotato$(13_10)	{$(13_10)		sprite_index = s_DraffPotatoStand$(13_10)		state = "idle"$(13_10)		substate = "ranged"$(13_10)		canMove = true	$(13_10)	}$(13_10)	$(13_10)	if sprite_index == s_DraffPotatoThrow$(13_10)	{$(13_10)		sprite_index = s_DraffIdle$(13_10)		state = "idle"$(13_10)		substate = ""$(13_10)		canMove = true		$(13_10)	}$(13_10)		if sprite_index == s_PMLazer and image_speed = 1$(13_10)	{$(13_10)		image_speed = -1$(13_10)		LaserCounter += 1$(13_10)	}$(13_10)	}$(13_10)			$(13_10)			if (image_index < 1)$(13_10){$(13_10)			if sprite_index == s_PMLazer and image_speed = -1$(13_10)	{$(13_10)			image_speed = 1$(13_10)			sprite_index = s_PMIdle$(13_10)		state = "idle"$(13_10)		substate = ""$(13_10)		canMove = true$(13_10)		LaserCounter = 0$(13_10)	}$(13_10)}$(13_10)$(13_10)if (image_index < 45)$(13_10){$(13_10)			if sprite_index == s_PMLazer and image_speed = -1$(13_10)	{$(13_10)		if LaserCounter < 2$(13_10)	{$(13_10)		image_speed = 1$(13_10)	}$(13_10)$(13_10)}$(13_10)}$(13_10)$(13_10)if (image_index > 4) or (image_index > 9) or (image_index > 14)$(13_10){$(13_10)	if sprite_index == s_PMPunch$(13_10)	{$(13_10)		if keyboard_check(basicbtn) = false$(13_10)		{$(13_10)		sprite_index = s_PMIdle$(13_10)		state = "idle"$(13_10)		substate = ""$(13_10)		canMove = true$(13_10)		}$(13_10)		instance_create_depth(x + sprite_height-768 + (image_xscale * 175), y-50 ,-y, HitboxPM)$(13_10)		$(13_10)	}$(13_10)	}$(13_10)	$(13_10)if (image_index > 45)$(13_10){$(13_10)	if sprite_index == s_PMLazer$(13_10)	{$(13_10)if (BriseMarc.image_xscale = 1)$(13_10){$(13_10)$(13_10)instance_create_depth(x + sprite_height-768 + (image_xscale * 235), y-185 ,-y, LaserBit)$(13_10)		if instance_exists(LaserBase) = false$(13_10)		{$(13_10)			instance_create_depth(x + sprite_height-768 + (image_xscale * 225), y-190 ,-y, LaserBase)$(13_10)		}$(13_10)}$(13_10)$(13_10)if (BriseMarc.image_xscale = -1)$(13_10){$(13_10)$(13_10)instance_create_depth(x + sprite_height-768 + (image_xscale * 130), y-185 ,-y, LaserBit)$(13_10)		if instance_exists(LaserBase) = false$(13_10)		{$(13_10)			instance_create_depth(x + sprite_height-768 + (image_xscale * 120), y-190 ,-y, LaserBase)$(13_10)		}$(13_10)}$(13_10)	}$(13_10)	}$(13_10)//Animation end$(13_10)if sprite_index == s_PMRun and speed == 0$(13_10){$(13_10)	sprite_index = s_PMIdle$(13_10)	state = "idle"$(13_10)	substate = ""$(13_10)}$(13_10)$(13_10)if sprite_index == s_PMIdle and speed != 0$(13_10){$(13_10)	sprite_index = s_PMRun$(13_10)	state = "walk"$(13_10)	substate = ""$(13_10)}"
self.depth = -y

//Detect boundries
if y >= 800
{
	y = 800
}
if y <= 500
{
	y = 500
}

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

//Detect movements
if (canMove and !isStunned) or isMovingTarget
{
	if !isMovingTarget
	{
		if keyboard_check(upbtn)
		{
			vspeed = -10	
		}
		if keyboard_check(downbtn)
		{
			vspeed = 10	
		}
		if keyboard_check(leftbtn)
		{
			hspeed = -10
			image_xscale = -1
		}
		if keyboard_check(rightbtn)
		{
			hspeed = 10
			image_xscale = 1
		}
	} else
		{
		if keyboard_check(upbtn)
		{
			targetImage.vspeed = -10	
		}
		if keyboard_check(downbtn)
		{
			targetImage.vspeed = 10	
		}
		if keyboard_check(leftbtn)
		{
			targetImage.hspeed = -10			
		}
		if keyboard_check(rightbtn)
		{
			targetImage.hspeed = 10
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

if isStunned
{
	if speed < 0
		speed += 0.5
	else
		speed = 0
}

//Detects attack
if keyboard_check(rangedbtn) and state != "attack" and substate == ""
{
	hspeed = 0
	vspeed = 0
	canMove = false
	state = "attack"
	substate = "ranged"
	sprite_index = s_PMLazer
	image_index=0
}


//Detects attack
if keyboard_check(basicbtn) and state != "attack" and substate == ""
{
	hspeed = 0
	vspeed = 0
	canMove = false
	state = "attack"
	substate = "basic"
	sprite_index = s_PMPunch
	image_index = 0
	
}



//Animations
if (image_index > image_number - 1)
{
	if sprite_index == s_PMPunch
	{
		if keyboard_check(basicbtn) = false
		{
		sprite_index = s_PMIdle
		state = "idle"
		substate = ""
		canMove = true
		}
		instance_create_depth(x + sprite_height-768 + (image_xscale * 175), y-50 ,-y, HitboxPM)
		
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
		if sprite_index == s_PMLazer and image_speed = 1
	{
		image_speed = -1
		LaserCounter += 1
	}
	}
			
			if (image_index < 1)
{
			if sprite_index == s_PMLazer and image_speed = -1
	{
			image_speed = 1
			sprite_index = s_PMIdle
		state = "idle"
		substate = ""
		canMove = true
		LaserCounter = 0
	}
}

if (image_index < 45)
{
			if sprite_index == s_PMLazer and image_speed = -1
	{
		if LaserCounter < 2
	{
		image_speed = 1
	}

}
}

if (image_index > 4) or (image_index > 9) or (image_index > 14)
{
	if sprite_index == s_PMPunch
	{
		if keyboard_check(basicbtn) = false
		{
		sprite_index = s_PMIdle
		state = "idle"
		substate = ""
		canMove = true
		}
		instance_create_depth(x + sprite_height-768 + (image_xscale * 175), y-50 ,-y, HitboxPM)
		
	}
	}
	
if (image_index > 45)
{
	if sprite_index == s_PMLazer
	{
if (BriseMarc.image_xscale = 1)
{

instance_create_depth(x + sprite_height-768 + (image_xscale * 235), y-185 ,-y, LaserBit)
		if instance_exists(LaserBase) = false
		{
			instance_create_depth(x + sprite_height-768 + (image_xscale * 225), y-190 ,-y, LaserBase)
		}
}

if (BriseMarc.image_xscale = -1)
{

instance_create_depth(x + sprite_height-768 + (image_xscale * 130), y-185 ,-y, LaserBit)
		if instance_exists(LaserBase) = false
		{
			instance_create_depth(x + sprite_height-768 + (image_xscale * 120), y-190 ,-y, LaserBase)
		}
}
	}
	}
//Animation end
if sprite_index == s_PMRun and speed == 0
{
	sprite_index = s_PMIdle
	state = "idle"
	substate = ""
}

if sprite_index == s_PMIdle and speed != 0
{
	sprite_index = s_PMRun
	state = "walk"
	substate = ""
}