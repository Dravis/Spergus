/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 165CC74F
/// @DnDArgument : "code" "self.depth = -y$(13_10)$(13_10)$(13_10)//Detect boundries$(13_10)if y >= 800$(13_10){$(13_10)	y = 800$(13_10)}$(13_10)if y <= 500$(13_10){$(13_10)	y = 500$(13_10)}$(13_10)$(13_10)if keyboard_check(selectbtn)$(13_10){$(13_10)	inventoryObj.isActivated = true$(13_10)	inventoryObj.x = x$(13_10)	inventoryObj.y = y$(13_10)}$(13_10)else$(13_10){$(13_10)	inventoryObj.isActivated = false$(13_10)}$(13_10)$(13_10)//Detect movements$(13_10)if (canMove and !isStunned) or isMovingTarget$(13_10){$(13_10)	if !isMovingTarget$(13_10)	{$(13_10)		if keyboard_check(upbtn)$(13_10)		{$(13_10)			vspeed = -10	$(13_10)		}$(13_10)		if keyboard_check(downbtn)$(13_10)		{$(13_10)			vspeed = 10	$(13_10)		}$(13_10)		if keyboard_check(leftbtn)$(13_10)		{$(13_10)			hspeed = -10$(13_10)			image_xscale = -1$(13_10)		}$(13_10)		if keyboard_check(rightbtn)$(13_10)		{$(13_10)			hspeed = 10$(13_10)			image_xscale = 1$(13_10)		}$(13_10)	} else$(13_10)		{$(13_10)		if keyboard_check(upbtn)$(13_10)		{$(13_10)			targetImage.vspeed = -10	$(13_10)		}$(13_10)		if keyboard_check(downbtn)$(13_10)		{$(13_10)			targetImage.vspeed = 10	$(13_10)		}$(13_10)		if keyboard_check(leftbtn)$(13_10)		{$(13_10)			targetImage.hspeed = -10			$(13_10)		}$(13_10)		if keyboard_check(rightbtn)$(13_10)		{$(13_10)			targetImage.hspeed = 10$(13_10)		}$(13_10)	}$(13_10)	$(13_10)}$(13_10)$(13_10)$(13_10)if keyboard_check_released(upbtn) or keyboard_check_released(downbtn) $(13_10){$(13_10)	vspeed = 0$(13_10)}$(13_10)if keyboard_check_released(leftbtn) or keyboard_check_released(rightbtn) $(13_10){$(13_10)	hspeed = 0$(13_10)}$(13_10)$(13_10)if isStunned$(13_10){$(13_10)	if speed < 0$(13_10)		speed += 0.5$(13_10)	else$(13_10)		speed = 0$(13_10)}$(13_10)$(13_10)//Detects attack$(13_10)if keyboard_check(basicbtn) and state != "attack" and substate == ""$(13_10){$(13_10)	hspeed = 0$(13_10)	vspeed = 0$(13_10)	canMove = false$(13_10)	state = "attack"$(13_10)	substate = "basic"$(13_10)	sprite_index = s_BlikPunch$(13_10)	image_index = 0$(13_10)	$(13_10)}$(13_10)$(13_10)if keyboard_check_released(basicbtn)$(13_10)	{$(13_10)		if state = "attack" and substate = "basic"$(13_10)		{$(13_10)		sprite_index = s_BlikIdle$(13_10)		state = "idle"$(13_10)		substate = ""$(13_10)		canMove = true$(13_10)		}$(13_10)	}$(13_10)$(13_10)//Detects attack$(13_10)if keyboard_check(rangedbtn) and state != "attack" and substate == ""$(13_10){$(13_10)	hspeed = 0$(13_10)	vspeed = 0$(13_10)	canMove = false$(13_10)	state = "attack"$(13_10)	substate = "ranged"$(13_10)	sprite_index = s_BlikCast1$(13_10)	image_index=0$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)//Animations$(13_10)if (image_index > image_number - 1)$(13_10){$(13_10)	if sprite_index == s_BlikCast1$(13_10)	{$(13_10)	if keyboard_check(rangedbtn) = false$(13_10)		{$(13_10)		sprite_index = s_BlikCast2$(13_10)		image_index = 0$(13_10)		Barouet.speed = 5*Blik.image_xscale$(13_10)		Barouet.gravity= 0.5$(13_10)		Barouet.rotspeed = irandom_range(0,-6)$(13_10)		}$(13_10)	else$(13_10)		{$(13_10)			image_index = image_number-1$(13_10)		}$(13_10)	}$(13_10)$(13_10)else if sprite_index == s_BlikCast2$(13_10)		{$(13_10)		sprite_index = s_BlikThrowShuriken$(13_10)		}$(13_10)$(13_10)else if sprite_index == s_BlikThrowShuriken$(13_10)		{$(13_10)		sprite_index = s_BlikIdle$(13_10)		shuri = instance_create_depth(x,y,-y,Shuriken)$(13_10)		state = "idle"$(13_10)		substate = ""$(13_10)		canMove = true$(13_10)		}$(13_10)$(13_10)	if sprite_index == s_BlikPunch$(13_10)	{$(13_10)		if keyboard_check(basicbtn) = false$(13_10)		{$(13_10)		sprite_index = s_BlikIdle$(13_10)		state = "idle"$(13_10)		substate = ""$(13_10)		canMove = true$(13_10)		}$(13_10)	}$(13_10)	$(13_10)	if sprite_index == s_DraffPotatoThrow$(13_10)	{$(13_10)		sprite_index = s_DraffIdle$(13_10)		state = "idle"$(13_10)		substate = ""$(13_10)		canMove = true		$(13_10)	}$(13_10)}$(13_10)$(13_10)if (image_index = image_number - 2)$(13_10){$(13_10)	if sprite_index = s_BlikCast1$(13_10)			{$(13_10)			Barouet = instance_create_depth(x + sprite_height-768 + (image_xscale * 500), y-300 , -y, Barouette)$(13_10)			Barouet.gravity = 0$(13_10)			Barouet. speed = 0$(13_10)			Barouet.rotspeed = 0$(13_10)			$(13_10)			}$(13_10)		}$(13_10)		$(13_10)if sprite_index == s_BlikPunch$(13_10){$(13_10)	if image_index > 4 or image_index > 9$(13_10)	{$(13_10)		hb = instance_create_depth(x + sprite_height-768 + (image_xscale * 175), y-50 ,-y, HitboxBlik)$(13_10)		hb.creator = Blik$(13_10)	}$(13_10)}$(13_10)//Animation end$(13_10)if sprite_index == s_BlikWalk and speed == 0$(13_10){$(13_10)	sprite_index = s_BlikIdle$(13_10)	state = "idle"$(13_10)	substate = ""$(13_10)}$(13_10)$(13_10)if sprite_index == s_BlikIdle and speed != 0$(13_10){$(13_10)	sprite_index = s_BlikWalk$(13_10)	state = "walk"$(13_10)	substate = ""$(13_10)}"
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
if keyboard_check(basicbtn) and state != "attack" and substate == ""
{
	hspeed = 0
	vspeed = 0
	canMove = false
	state = "attack"
	substate = "basic"
	sprite_index = s_BlikPunch
	image_index = 0
	
}

if keyboard_check_released(basicbtn)
	{
		if state = "attack" and substate = "basic"
		{
		sprite_index = s_BlikIdle
		state = "idle"
		substate = ""
		canMove = true
		}
	}

//Detects attack
if keyboard_check(rangedbtn) and state != "attack" and substate == ""
{
	hspeed = 0
	vspeed = 0
	canMove = false
	state = "attack"
	substate = "ranged"
	sprite_index = s_BlikCast1
	image_index=0
}



//Animations
if (image_index > image_number - 1)
{
	if sprite_index == s_BlikCast1
	{
	if keyboard_check(rangedbtn) = false
		{
		sprite_index = s_BlikCast2
		image_index = 0
		Barouet.speed = 5*Blik.image_xscale
		Barouet.gravity= 0.5
		Barouet.rotspeed = irandom_range(0,-6)
		}
	else
		{
			image_index = image_number-1
		}
	}

else if sprite_index == s_BlikCast2
		{
		sprite_index = s_BlikThrowShuriken
		}

else if sprite_index == s_BlikThrowShuriken
		{
		sprite_index = s_BlikIdle
		shuri = instance_create_depth(x,y,-y,Shuriken)
		state = "idle"
		substate = ""
		canMove = true
		}

	if sprite_index == s_BlikPunch
	{
		if keyboard_check(basicbtn) = false
		{
		sprite_index = s_BlikIdle
		state = "idle"
		substate = ""
		canMove = true
		}
	}
	
	if sprite_index == s_DraffPotatoThrow
	{
		sprite_index = s_DraffIdle
		state = "idle"
		substate = ""
		canMove = true		
	}
}

if (image_index = image_number - 2)
{
	if sprite_index = s_BlikCast1
			{
			Barouet = instance_create_depth(x + sprite_height-768 + (image_xscale * 500), y-300 , -y, Barouette)
			Barouet.gravity = 0
			Barouet. speed = 0
			Barouet.rotspeed = 0
			
			}
		}
		
if sprite_index == s_BlikPunch
{
	if image_index > 4 or image_index > 9
	{
		hb = instance_create_depth(x + sprite_height-768 + (image_xscale * 175), y-50 ,-y, HitboxBlik)
		hb.creator = Blik
	}
}
//Animation end
if sprite_index == s_BlikWalk and speed == 0
{
	sprite_index = s_BlikIdle
	state = "idle"
	substate = ""
}

if sprite_index == s_BlikIdle and speed != 0
{
	sprite_index = s_BlikWalk
	state = "walk"
	substate = ""
}