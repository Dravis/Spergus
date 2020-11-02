/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 165CC74F
/// @DnDArgument : "code" "self.depth = -y$(13_10)$(13_10)//Detect boundries$(13_10)if y >= 800$(13_10){$(13_10)	y = 800$(13_10)}$(13_10)if y <= 500$(13_10){$(13_10)	y = 500$(13_10)}$(13_10)$(13_10)if keyboard_check(selectbtn)$(13_10){$(13_10)	inventoryObj.isActivated = true$(13_10)	inventoryObj.x = x$(13_10)	inventoryObj.y = y$(13_10)}$(13_10)else$(13_10){$(13_10)	inventoryObj.isActivated = false$(13_10)}$(13_10)$(13_10)//Detect movements$(13_10)if (canMove and !isStunned) or isMovingTarget$(13_10){$(13_10)	if !isMovingTarget$(13_10)	{$(13_10)		if keyboard_check(upbtn)$(13_10)		{$(13_10)			vspeed = -10	$(13_10)		}$(13_10)		if keyboard_check(downbtn)$(13_10)		{$(13_10)			vspeed = 10	$(13_10)		}$(13_10)		if keyboard_check(leftbtn)$(13_10)		{$(13_10)			hspeed = -10$(13_10)			image_xscale = -1$(13_10)		}$(13_10)		if keyboard_check(rightbtn)$(13_10)		{$(13_10)			hspeed = 10$(13_10)			image_xscale = 1$(13_10)		}$(13_10)	} else$(13_10)		{$(13_10)		if keyboard_check(upbtn)$(13_10)		{$(13_10)			targetImage.vspeed = -10	$(13_10)		}$(13_10)		if keyboard_check(downbtn)$(13_10)		{$(13_10)			targetImage.vspeed = 10	$(13_10)		}$(13_10)		if keyboard_check(leftbtn)$(13_10)		{$(13_10)			targetImage.hspeed = -10			$(13_10)		}$(13_10)		if keyboard_check(rightbtn)$(13_10)		{$(13_10)			targetImage.hspeed = 10$(13_10)		}$(13_10)	}$(13_10)	$(13_10)}$(13_10)$(13_10)$(13_10)if keyboard_check_released(upbtn) or keyboard_check_released(downbtn) $(13_10){$(13_10)	vspeed = 0$(13_10)}$(13_10)if keyboard_check_released(leftbtn) or keyboard_check_released(rightbtn) $(13_10){$(13_10)	hspeed = 0$(13_10)}$(13_10)$(13_10)if isStunned$(13_10){$(13_10)	if speed < 0$(13_10)		speed += 0.5$(13_10)	else$(13_10)		speed = 0$(13_10)}$(13_10)$(13_10)// Detect shield sprites$(13_10)if substate == "shield"$(13_10){$(13_10)	IdleSprite = s_DestroBlock$(13_10)	RunSprite = s_DestroShieldWalk$(13_10)	speed = speed/2$(13_10)}$(13_10)$(13_10)if substate != "shield"$(13_10){$(13_10)	IdleSprite = s_DestroIdle$(13_10)	RunSprite = s_DestroRun$(13_10)}$(13_10)$(13_10)$(13_10)//Detects attack$(13_10)if keyboard_check(basicbtn) and state != "attack"$(13_10){$(13_10)	substate = "shield"$(13_10)	sprite_index = IdleSprite$(13_10)	if instance_exists(DestroShield) = false$(13_10){$(13_10)	shield = instance_create_depth(x + (50*image_xscale) , y , -y , DestroShield)	$(13_10)	shield.image_xscale = image_xscale$(13_10)	$(13_10)}$(13_10)}$(13_10)$(13_10)if keyboard_check_released(basicbtn)$(13_10)	{$(13_10)		substate = ""$(13_10)		sprite_index = s_DestroIdle$(13_10)		sprite_index = s_DestroRun$(13_10)	}$(13_10)$(13_10)//Detects attack$(13_10)if keyboard_check(rangedbtn) and state != "attack" and substate == ""$(13_10){$(13_10)	hspeed = 0$(13_10)	vspeed = 0$(13_10)	canMove = false$(13_10)	state = "attack"$(13_10)	substate = "ranged"$(13_10)	sprite_index = s_DestroBAM$(13_10)	image_index=0$(13_10)	instance_create_depth(x + sprite_height-768 + (image_xscale * 175), y-50 , 0, BoiteaMarde)	$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)//Animations$(13_10)if (image_index > image_number - 1)$(13_10){$(13_10)	if sprite_index == s_DestroBAM$(13_10)	{$(13_10)		sprite_index = IdleSprite$(13_10)		state = "idle"$(13_10)		substate = ""$(13_10)		canMove = true$(13_10)	}$(13_10)$(13_10)	$(13_10)	if sprite_index == s_DraffSpawnPotato$(13_10)	{$(13_10)		sprite_index = s_DraffPotatoStand$(13_10)		state = "idle"$(13_10)		substate = "ranged"$(13_10)		canMove = true	$(13_10)	}$(13_10)	$(13_10)	if sprite_index == s_DraffPotatoThrow$(13_10)	{$(13_10)		sprite_index = s_DraffIdle$(13_10)		state = "idle"$(13_10)		substate = ""$(13_10)		canMove = true		$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)//Animation end$(13_10)if (sprite_index == s_DestroRun or sprite_index == s_DestroShieldWalk) and speed == 0$(13_10){$(13_10)	sprite_index = IdleSprite$(13_10)	state = "idle"$(13_10)}$(13_10)$(13_10)if (sprite_index == s_DestroIdle or sprite_index == s_DestroBlock) and speed != 0$(13_10){$(13_10)	$(13_10)	sprite_index = RunSprite$(13_10)	state = "walk"	$(13_10)		$(13_10)}"
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

// Detect shield sprites
if substate == "shield"
{
	IdleSprite = s_DestroBlock
	RunSprite = s_DestroShieldWalk
	speed = speed/2
}

if substate != "shield"
{
	IdleSprite = s_DestroIdle
	RunSprite = s_DestroRun
}


//Detects attack
if keyboard_check(basicbtn) and state != "attack"
{
	substate = "shield"
	sprite_index = IdleSprite
	if instance_exists(DestroShield) = false
{
	shield = instance_create_depth(x + (50*image_xscale) , y , -y , DestroShield)	
	shield.image_xscale = image_xscale
	
}
}

if keyboard_check_released(basicbtn)
	{
		substate = ""
		sprite_index = s_DestroIdle
		sprite_index = s_DestroRun
	}

//Detects attack
if keyboard_check(rangedbtn) and state != "attack" and substate == ""
{
	hspeed = 0
	vspeed = 0
	canMove = false
	state = "attack"
	substate = "ranged"
	sprite_index = s_DestroBAM
	image_index=0
	instance_create_depth(x + sprite_height-768 + (image_xscale * 175), y-50 , 0, BoiteaMarde)	
}



//Animations
if (image_index > image_number - 1)
{
	if sprite_index == s_DestroBAM
	{
		sprite_index = IdleSprite
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


//Animation end
if (sprite_index == s_DestroRun or sprite_index == s_DestroShieldWalk) and speed == 0
{
	sprite_index = IdleSprite
	state = "idle"
}

if (sprite_index == s_DestroIdle or sprite_index == s_DestroBlock) and speed != 0
{
	
	sprite_index = RunSprite
	state = "walk"	
		
}