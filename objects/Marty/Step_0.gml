/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 165CC74F
/// @DnDArgument : "code" "self.depth = -y$(13_10)$(13_10)//Detect boundries$(13_10)if y >= 800$(13_10){$(13_10)	y = 800$(13_10)}$(13_10)if y <= 500$(13_10){$(13_10)	y = 500$(13_10)}$(13_10)$(13_10)//Detects attack$(13_10)if keyboard_check(basicbtn) and state != "attack" and substate == ""$(13_10){$(13_10)	if state == "idle"$(13_10)	{$(13_10)		state = "attack"$(13_10)		substate = "basic"$(13_10)		sprite_index = s_MartyShootIdle$(13_10)		image_index=0$(13_10)		hb = instance_create_depth(x + sprite_height-768 + (image_xscale * 300), y-150 , 0, HitboxMart)$(13_10)		hb.image_xscale = image_xscale$(13_10)	}$(13_10)	$(13_10)	if state == "walk"$(13_10)	{$(13_10)		state = "attack"$(13_10)		substate = "basicWalk"$(13_10)		sprite_index = s_MartWalkShooty$(13_10)		image_index=0$(13_10)		hb = instance_create_depth(x + sprite_height-768 + (image_xscale * 300), y-150, 0, HitboxMart)	$(13_10)		hb.image_xscale = image_xscale$(13_10)	}$(13_10)$(13_10)		$(13_10)}$(13_10)$(13_10)/*$(13_10)//Ranged Attack$(13_10)if keyboard_check(rangedbtn) and state != "attack"$(13_10){$(13_10)	if substate == "ranged"$(13_10)	{$(13_10)		hspeed = 0$(13_10)		vspeed = 0$(13_10)		state = "attack"$(13_10)		substate = "rangedThrow"$(13_10)		canMove = false$(13_10)		sprite_index = s_DraffPotatoStand$(13_10)		image_index=0$(13_10)		targetImage = instance_create_depth(x + sprite_height-1024 + (image_xscale * 750), y-50 , 0, Target)$(13_10)		targetImage.image_index = s_DraffPotatoTarget$(13_10)		targetImage.friction = 0.4$(13_10)		isMovingTarget = true$(13_10)	}$(13_10)	$(13_10)	//if is in no substate$(13_10)	if substate == ""$(13_10)	{$(13_10)		hspeed = 0$(13_10)		vspeed = 0$(13_10)		canMove = false$(13_10)		state = "attack"$(13_10)		substate = "ranged"$(13_10)		sprite_index = s_DraffSpawnPotato$(13_10)		image_index=0 $(13_10)	}	$(13_10)}$(13_10)$(13_10)//On "E" key release$(13_10)if substate == "rangedThrow" and !keyboard_check(rangedbtn)$(13_10){$(13_10)	sprite_index= s_DraffPotatoThrow$(13_10)	isMovingTarget = false$(13_10)	instance_destroy(targetImage)$(13_10)}$(13_10)$(13_10)$(13_10)//Frame 8 is when the object is thrown$(13_10)if image_index > 8 and substate = "rangedThrow"$(13_10){		$(13_10)	substate = "rangedThrown"$(13_10)	sack = instance_create_depth(x + (250 * image_xscale) , y-180 , 0, PotatoSack)$(13_10)	sack.direction = 0$(13_10)	sack.speed = image_xscale * 25$(13_10)	sack.image_xscale = image_xscale$(13_10)	canMove = true$(13_10)}*/$(13_10)$(13_10)if keyboard_check(selectbtn)$(13_10){$(13_10)	inventoryObj.isActivated = true$(13_10)	inventoryObj.x = x$(13_10)	inventoryObj.y = y$(13_10)}$(13_10)else$(13_10){$(13_10)	inventoryObj.isActivated = false$(13_10)}$(13_10)$(13_10)//Detect movements$(13_10)if (canMove and !isStunned) or isMovingTarget$(13_10){$(13_10)	if !isMovingTarget$(13_10)	{$(13_10)		if keyboard_check(upbtn)$(13_10)		{$(13_10)			vspeed = -10	$(13_10)		}$(13_10)		if keyboard_check(downbtn)$(13_10)		{$(13_10)			vspeed = 10	$(13_10)		}$(13_10)		if keyboard_check(leftbtn)$(13_10)		{$(13_10)			hspeed = -10$(13_10)			image_xscale = -1$(13_10)		}$(13_10)		if keyboard_check(rightbtn)$(13_10)		{$(13_10)			hspeed = 10$(13_10)			image_xscale = 1$(13_10)		}$(13_10)	} else$(13_10)		{$(13_10)		if keyboard_check(upbtn)$(13_10)		{$(13_10)			targetImage.vspeed = -10	$(13_10)		}$(13_10)		if keyboard_check(downbtn)$(13_10)		{$(13_10)			targetImage.vspeed = 10	$(13_10)		}$(13_10)		if keyboard_check(leftbtn)$(13_10)		{$(13_10)			targetImage.hspeed = -10			$(13_10)		}$(13_10)		if keyboard_check(rightbtn)$(13_10)		{$(13_10)			targetImage.hspeed = 10$(13_10)		}$(13_10)	}$(13_10)	$(13_10)}$(13_10)$(13_10)$(13_10)if keyboard_check_released(upbtn) or keyboard_check_released(downbtn) $(13_10){$(13_10)	vspeed = 0$(13_10)}$(13_10)if keyboard_check_released(leftbtn) or keyboard_check_released(rightbtn) $(13_10){$(13_10)	hspeed = 0$(13_10)}$(13_10)$(13_10)if isStunned$(13_10){$(13_10)	if speed < 0$(13_10)		speed += 0.5$(13_10)	else$(13_10)		speed = 0 $(13_10)}$(13_10)$(13_10)//Animations$(13_10)if (image_index > image_number - 1)$(13_10){$(13_10)	if sprite_index == s_MartyShootIdle$(13_10)	{$(13_10)		sprite_index = s_MartIdle$(13_10)		state = "idle"$(13_10)		substate = ""$(13_10)$(13_10)	}$(13_10)	$(13_10)	if sprite_index == s_MartWalkShooty$(13_10)	{$(13_10)		sprite_index = s_MartWalkShoot$(13_10)		state = "walk"$(13_10)		substate = ""$(13_10)	}$(13_10)	$(13_10)	/*$(13_10)	if sprite_index == s_DraffSpawnPotato$(13_10)	{$(13_10)		sprite_index = s_DraffPotatoStand$(13_10)		state = "idle"$(13_10)		substate = "ranged"$(13_10)		canMove = true	$(13_10)	}$(13_10)	$(13_10)	if sprite_index == s_DraffPotatoThrow$(13_10)	{$(13_10)		sprite_index = s_DraffIdle$(13_10)		state = "idle"$(13_10)		substate = ""$(13_10)		canMove = true		$(13_10)	}$(13_10)	*/$(13_10)}$(13_10)$(13_10)//Animation end$(13_10)if sprite_index == s_MartWalkShoot and speed == 0$(13_10){$(13_10)	sprite_index = s_MartIdle$(13_10)	state = "idle"$(13_10)	substate = ""$(13_10)}$(13_10)$(13_10)if sprite_index == s_MartIdle and speed != 0$(13_10){$(13_10)	sprite_index = s_MartWalkShoot$(13_10)	state = "walk"$(13_10)	substate = ""$(13_10)}$(13_10)$(13_10)if sprite_index == s_MartWalkShooty and speed == 0$(13_10){$(13_10)	i = image_index$(13_10)	sprite_index = s_MartyShootIdle$(13_10)	image_index = i$(13_10)	substate = "basic"$(13_10)	$(13_10)}$(13_10)$(13_10)if sprite_index == s_MartyShootIdle and speed != 0$(13_10){$(13_10)	i = image_index$(13_10)	sprite_index = s_MartWalkShooty$(13_10)	image_index = i$(13_10)	substate = "basicWalk"$(13_10)}$(13_10)$(13_10)/*$(13_10)if sprite_index == s_DraffPotatoWalk and speed == 0$(13_10){$(13_10)	sprite_index = s_DraffPotatoStand$(13_10)	state = "idle"$(13_10)	substate = "ranged"$(13_10)}$(13_10)$(13_10)if sprite_index == s_DraffPotatoStand and speed != 0$(13_10){$(13_10)	sprite_index = s_DraffPotatoWalk$(13_10)	state = "walk"$(13_10)	substate = "ranged"$(13_10)}*/$(13_10)$(13_10)"
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

//Detects attack
if keyboard_check(basicbtn) and state != "attack" and substate == ""
{
	if state == "idle"
	{
		state = "attack"
		substate = "basic"
		sprite_index = s_MartyShootIdle
		image_index=0
		hb = instance_create_depth(x + sprite_height-768 + (image_xscale * 300), y-150 , 0, HitboxMart)
		hb.image_xscale = image_xscale
	}
	
	if state == "walk"
	{
		state = "attack"
		substate = "basicWalk"
		sprite_index = s_MartWalkShooty
		image_index=0
		hb = instance_create_depth(x + sprite_height-768 + (image_xscale * 300), y-150, 0, HitboxMart)	
		hb.image_xscale = image_xscale
	}

		
}

/*
//Ranged Attack
if keyboard_check(rangedbtn) and state != "attack"
{
	if substate == "ranged"
	{
		hspeed = 0
		vspeed = 0
		state = "attack"
		substate = "rangedThrow"
		canMove = false
		sprite_index = s_DraffPotatoStand
		image_index=0
		targetImage = instance_create_depth(x + sprite_height-1024 + (image_xscale * 750), y-50 , 0, Target)
		targetImage.image_index = s_DraffPotatoTarget
		targetImage.friction = 0.4
		isMovingTarget = true
	}
	
	//if is in no substate
	if substate == ""
	{
		hspeed = 0
		vspeed = 0
		canMove = false
		state = "attack"
		substate = "ranged"
		sprite_index = s_DraffSpawnPotato
		image_index=0 
	}	
}

//On "E" key release
if substate == "rangedThrow" and !keyboard_check(rangedbtn)
{
	sprite_index= s_DraffPotatoThrow
	isMovingTarget = false
	instance_destroy(targetImage)
}


//Frame 8 is when the object is thrown
if image_index > 8 and substate = "rangedThrow"
{		
	substate = "rangedThrown"
	sack = instance_create_depth(x + (250 * image_xscale) , y-180 , 0, PotatoSack)
	sack.direction = 0
	sack.speed = image_xscale * 25
	sack.image_xscale = image_xscale
	canMove = true
}*/

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

//Animations
if (image_index > image_number - 1)
{
	if sprite_index == s_MartyShootIdle
	{
		sprite_index = s_MartIdle
		state = "idle"
		substate = ""

	}
	
	if sprite_index == s_MartWalkShooty
	{
		sprite_index = s_MartWalkShoot
		state = "walk"
		substate = ""
	}
	
	/*
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
	*/
}

//Animation end
if sprite_index == s_MartWalkShoot and speed == 0
{
	sprite_index = s_MartIdle
	state = "idle"
	substate = ""
}

if sprite_index == s_MartIdle and speed != 0
{
	sprite_index = s_MartWalkShoot
	state = "walk"
	substate = ""
}

if sprite_index == s_MartWalkShooty and speed == 0
{
	i = image_index
	sprite_index = s_MartyShootIdle
	image_index = i
	substate = "basic"
	
}

if sprite_index == s_MartyShootIdle and speed != 0
{
	i = image_index
	sprite_index = s_MartWalkShooty
	image_index = i
	substate = "basicWalk"
}

/*
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
}*/

/**/