/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 165CC74F
/// @DnDArgument : "code" "self.depth = -y$(13_10)$(13_10)//Detect boundries$(13_10)if y >= 800$(13_10){$(13_10)	y = 800$(13_10)}$(13_10)if y <= 500$(13_10){$(13_10)	y = 500$(13_10)}$(13_10)$(13_10)//Detects attack$(13_10)if keyboard_check(basicbtn) and state != "attack" and substate == ""$(13_10){$(13_10)	hspeed = 0$(13_10)	vspeed = 0$(13_10)	canMove = false$(13_10)	state = "attack"$(13_10)	substate = "basic"$(13_10)	sprite_index = s_DraffAttack$(13_10)	image_index=0$(13_10)	instance_create_depth(x + sprite_height-768 + (image_xscale * 175), y-50 , 0, Hitbox)	$(13_10)}$(13_10)$(13_10)//Ranged Attack$(13_10)if keyboard_check(rangedbtn) and state != "attack"$(13_10){$(13_10)	if substate == "ranged"$(13_10)	{$(13_10)		hspeed = 0$(13_10)		vspeed = 0$(13_10)		state = "attack"$(13_10)		substate = "rangedThrow"$(13_10)		canMove = false$(13_10)		sprite_index = s_DraffPotatoStand$(13_10)		image_index=0$(13_10)		$(13_10)		if !isMovingTarget$(13_10)		{$(13_10)			targetImage = instance_create_depth(x + sprite_height-768 + (image_xscale * 375), y+50 , 0, Target)$(13_10)			targetImage.image_index = s_DraffPotatoTarget$(13_10)			targetImage.depth = -y$(13_10)			isMovingTarget = true$(13_10)		}$(13_10)	}$(13_10)	$(13_10)	//if is in no substate$(13_10)	if substate == ""$(13_10)	{$(13_10)		hspeed = 0$(13_10)		vspeed = 0$(13_10)		canMove = false$(13_10)		state = "attack"$(13_10)		substate = "ranged"$(13_10)		sprite_index = s_DraffSpawnPotato$(13_10)		image_index=0 $(13_10)	}	$(13_10)}$(13_10)$(13_10)//On "E" key release$(13_10)if substate == "rangedThrow" and !keyboard_check(rangedbtn)$(13_10){$(13_10)	sprite_index= s_DraffPotatoThrow$(13_10)	isMovingTarget = false$(13_10)	targetImage.image_alpha=0$(13_10)	targetImage.speed=0$(13_10)}$(13_10)$(13_10)//Frame 11 is when the object is thrown$(13_10)if image_index > 11 and substate = "rangedThrow"$(13_10){$(13_10)	substate = "rangedThrown"$(13_10)	sack = instance_create_depth(x + (250 * image_xscale) , y-180 , 0, PotatoSack)$(13_10)	sack.image_xscale = image_xscale$(13_10)	canMove = true$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)//Smash Attack$(13_10)if keyboard_check(smashbtn) and state != "attack"$(13_10){$(13_10)	if substate == "smashLoad"$(13_10)	{$(13_10)		hspeed = 0$(13_10)		vspeed = 0$(13_10)		state = "smash"$(13_10)		substate = "smashLoad"$(13_10)		canMove = false$(13_10)		sprite_index = s_VUSLoad$(13_10)			}$(13_10)	$(13_10)	//if is in no substate$(13_10)	if substate == ""$(13_10)	{$(13_10)		hspeed = 0$(13_10)		vspeed = 0$(13_10)		canMove = false$(13_10)		state = "smash"$(13_10)		substate = "smashLoad"$(13_10)		sprite_index = s_VUSLoad$(13_10)	}	$(13_10)	$(13_10)	if smashpower > 20			$(13_10)	{$(13_10)		smashpower = 20$(13_10)	}$(13_10)	$(13_10)	if smashpower > 3$(13_10)	{$(13_10)		if canStartTimer$(13_10)		{$(13_10)			image_blend = $FFFB00$(13_10)			alarm[10] = 10 - smashpower/3$(13_10)			canStartTimer = false$(13_10)		}$(13_10)	}$(13_10)$(13_10)}$(13_10)$(13_10)//On "E" key release$(13_10)if substate == "smashLoad" and !keyboard_check(smashbtn)$(13_10){$(13_10)	if image_index = image_number-1$(13_10)	{$(13_10)	sprite_index= s_VUSRelease$(13_10)	state = "revole"$(13_10)	substate = ""$(13_10)	canMove = false$(13_10)	instance_create_depth(x + sprite_height-768 + (image_xscale * 175), y-50 , 0, Hitbox)	$(13_10)	move_towards_point(x+(200*image_xscale),y,(2+(10*smashpower/12)))$(13_10)	canStartTimer = true$(13_10)	}$(13_10)}$(13_10)	$(13_10)$(13_10)$(13_10)$(13_10)if keyboard_check(selectbtn)$(13_10){$(13_10)	inventoryObj.isActivated = true$(13_10)	inventoryObj.x = x$(13_10)	inventoryObj.y = y$(13_10)}$(13_10)else$(13_10){$(13_10)	inventoryObj.isActivated = false$(13_10)}$(13_10)$(13_10)//Detect movements$(13_10)if (canMove and !isStunned) or isMovingTarget $(13_10){$(13_10)	if !isMovingTarget and !inventoryObj.isActivated$(13_10)	{$(13_10)		if keyboard_check(upbtn)$(13_10)		{$(13_10)			vspeed = -10	$(13_10)		}$(13_10)		if keyboard_check(downbtn)$(13_10)		{$(13_10)			vspeed = 10	$(13_10)		}$(13_10)		if keyboard_check(leftbtn)$(13_10)		{$(13_10)			hspeed = -10$(13_10)			image_xscale = -1$(13_10)		}$(13_10)		if keyboard_check(rightbtn)$(13_10)		{$(13_10)			hspeed = 10$(13_10)			image_xscale = 1$(13_10)		}$(13_10)	}$(13_10)	$(13_10)	if inventoryObj.isActivated$(13_10)	{$(13_10)		if keyboard_check(leftbtn)$(13_10)		{$(13_10)			inventoryObj.selectedIndex += 1$(13_10)		}$(13_10)		if keyboard_check(rightbtn)$(13_10)		{$(13_10)			inventoryObj.selectedIndex -= 1$(13_10)		}$(13_10)		if keyboard_check(basicbtn)$(13_10)		{$(13_10)			inventoryObj.itemUsed = true$(13_10)		}$(13_10)	}$(13_10)	$(13_10)	if isMovingTarget$(13_10)	{$(13_10)		if keyboard_check(upbtn)$(13_10)		{$(13_10)			targetImage.vspeed = -10	$(13_10)		}$(13_10)		if keyboard_check(downbtn)$(13_10)		{$(13_10)			targetImage.vspeed = 10	$(13_10)		}$(13_10)		if keyboard_check(leftbtn)$(13_10)		{$(13_10)			targetImage.hspeed = -10			$(13_10)		}$(13_10)		if keyboard_check(rightbtn)$(13_10)		{$(13_10)			targetImage.hspeed = 10$(13_10)		}$(13_10)		if !keyboard_check(upbtn) and !keyboard_check(downbtn) and !keyboard_check(leftbtn) and !keyboard_check(rightbtn)$(13_10)		{$(13_10)			targetImage.speed = 0$(13_10)		}$(13_10)		$(13_10)		//Detect moving target boundaries		$(13_10)		if targetImage.y >= 900$(13_10)		{$(13_10)			targetImage.y =900$(13_10)		}$(13_10)		if targetImage.y <= 550$(13_10)		{$(13_10)			targetImage.y = 550$(13_10)		}$(13_10)$(13_10)		if image_xscale > 0$(13_10)		{$(13_10)			if targetImage.x < Draffeurd.x+100$(13_10)			{$(13_10)				targetImage.x =  Draffeurd.x+100$(13_10)			}$(13_10)			$(13_10)			if targetImage.x > Draffeurd.x+600$(13_10)			{$(13_10)				targetImage.x =  Draffeurd.x+600$(13_10)			}$(13_10)		}$(13_10)		$(13_10)		if image_xscale < 0$(13_10)		{$(13_10)			if targetImage.x > Draffeurd.x-300$(13_10)			{$(13_10)				targetImage.x =  Draffeurd.x-300$(13_10)			}$(13_10)			$(13_10)			if targetImage.x < Draffeurd.x-900$(13_10)			{$(13_10)				targetImage.x =  Draffeurd.x-900$(13_10)			}$(13_10)		}		$(13_10)	}	$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)if keyboard_check_released(upbtn) or keyboard_check_released(downbtn) $(13_10){$(13_10)	vspeed = 0$(13_10)}$(13_10)$(13_10)if keyboard_check_released(leftbtn) or keyboard_check_released(rightbtn) $(13_10){$(13_10)	hspeed = 0$(13_10)}$(13_10)$(13_10)if isStunned$(13_10){$(13_10)	if speed < 0$(13_10)		speed += 0.5$(13_10)	else$(13_10)		speed = 0$(13_10)}$(13_10)$(13_10)//Animations$(13_10)if (image_index > image_number - 1)$(13_10){$(13_10)	if sprite_index == s_DraffAttack$(13_10)	{$(13_10)		sprite_index = s_DraffIdle$(13_10)		state = "idle"$(13_10)		substate = ""$(13_10)		canMove = true$(13_10)	}$(13_10)	$(13_10)	if sprite_index == s_DraffSpawnPotato$(13_10)	{$(13_10)		sprite_index = s_DraffPotatoStand$(13_10)		state = "idle"$(13_10)		substate = "ranged"$(13_10)		canMove = true	$(13_10)	}$(13_10)	$(13_10)	if sprite_index == s_DraffPotatoThrow$(13_10)	{$(13_10)		sprite_index = s_DraffIdle$(13_10)		state = "idle"$(13_10)		substate = ""$(13_10)		canMove = true		$(13_10)	}$(13_10)	$(13_10)	if sprite_index == s_VUSLoad$(13_10)	{$(13_10)		image_index = image_number - 5$(13_10)		state = "smash"$(13_10)		substate = "smashLoad"$(13_10)		canMove = false$(13_10)		smashpower += 1		$(13_10)	}$(13_10)	$(13_10)	$(13_10)	if sprite_index == s_VUSRelease$(13_10)	{$(13_10)		sprite_index = s_DraffIdle$(13_10)		state = "idle"$(13_10)		substate = ""$(13_10)		speed = 0$(13_10)		canMove = true$(13_10)		smashpower = 0$(13_10)		image_speed = 1$(13_10)	}$(13_10)	$(13_10)}$(13_10)$(13_10)//Animation end$(13_10)if sprite_index == s_DraffWalk and speed == 0$(13_10){$(13_10)	sprite_index = s_DraffIdle$(13_10)	state = "idle"$(13_10)	substate = ""$(13_10)}$(13_10)$(13_10)if sprite_index == s_DraffIdle and speed != 0$(13_10){$(13_10)	sprite_index = s_DraffWalk$(13_10)	state = "walk"$(13_10)	substate = ""$(13_10)}$(13_10)$(13_10)if sprite_index == s_DraffPotatoWalk and speed == 0$(13_10){$(13_10)	sprite_index = s_DraffPotatoStand$(13_10)	state = "idle"$(13_10)	substate = "ranged"$(13_10)}$(13_10)$(13_10)if sprite_index == s_DraffPotatoStand and speed != 0$(13_10){$(13_10)	sprite_index = s_DraffPotatoWalk$(13_10)	state = "walk"$(13_10)	substate = "ranged"$(13_10)}$(13_10)"
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
	hspeed = 0
	vspeed = 0
	canMove = false
	state = "attack"
	substate = "basic"
	sprite_index = s_DraffAttack
	image_index=0
	instance_create_depth(x + sprite_height-768 + (image_xscale * 175), y-50 , 0, Hitbox)	
}

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
		
		if !isMovingTarget
		{
			targetImage = instance_create_depth(x + sprite_height-768 + (image_xscale * 375), y+50 , 0, Target)
			targetImage.image_index = s_DraffPotatoTarget
			targetImage.depth = -y
			isMovingTarget = true
		}
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
	targetImage.image_alpha=0
	targetImage.speed=0
}

//Frame 11 is when the object is thrown
if image_index > 11 and substate = "rangedThrow"
{
	substate = "rangedThrown"
	sack = instance_create_depth(x + (250 * image_xscale) , y-180 , 0, PotatoSack)
	sack.image_xscale = image_xscale
	canMove = true
}



//Smash Attack
if keyboard_check(smashbtn) and state != "attack"
{
	if substate == "smashLoad"
	{
		hspeed = 0
		vspeed = 0
		state = "smash"
		substate = "smashLoad"
		canMove = false
		sprite_index = s_VUSLoad
			}
	
	//if is in no substate
	if substate == ""
	{
		hspeed = 0
		vspeed = 0
		canMove = false
		state = "smash"
		substate = "smashLoad"
		sprite_index = s_VUSLoad
	}	
	
	if smashpower > 20			
	{
		smashpower = 20
	}
	
	if smashpower > 3
	{
		if canStartTimer
		{
			image_blend = $FFFB00
			alarm[10] = 10 - smashpower/3
			canStartTimer = false
		}
	}

}

//On "E" key release
if substate == "smashLoad" and !keyboard_check(smashbtn)
{
	if image_index = image_number-1
	{
	sprite_index= s_VUSRelease
	state = "revole"
	substate = ""
	canMove = false
	instance_create_depth(x + sprite_height-768 + (image_xscale * 175), y-50 , 0, Hitbox)	
	move_towards_point(x+(200*image_xscale),y,(2+(10*smashpower/12)))
	canStartTimer = true
	}
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
	if !isMovingTarget and !inventoryObj.isActivated
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
	}
	
	if inventoryObj.isActivated
	{
		if keyboard_check(leftbtn)
		{
			inventoryObj.selectedIndex += 1
		}
		if keyboard_check(rightbtn)
		{
			inventoryObj.selectedIndex -= 1
		}
		if keyboard_check(basicbtn)
		{
			inventoryObj.itemUsed = true
		}
	}
	
	if isMovingTarget
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
		if !keyboard_check(upbtn) and !keyboard_check(downbtn) and !keyboard_check(leftbtn) and !keyboard_check(rightbtn)
		{
			targetImage.speed = 0
		}
		
		//Detect moving target boundaries		
		if targetImage.y >= 900
		{
			targetImage.y =900
		}
		if targetImage.y <= 550
		{
			targetImage.y = 550
		}

		if image_xscale > 0
		{
			if targetImage.x < Draffeurd.x+100
			{
				targetImage.x =  Draffeurd.x+100
			}
			
			if targetImage.x > Draffeurd.x+600
			{
				targetImage.x =  Draffeurd.x+600
			}
		}
		
		if image_xscale < 0
		{
			if targetImage.x > Draffeurd.x-300
			{
				targetImage.x =  Draffeurd.x-300
			}
			
			if targetImage.x < Draffeurd.x-900
			{
				targetImage.x =  Draffeurd.x-900
			}
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
	
	if sprite_index == s_VUSLoad
	{
		image_index = image_number - 5
		state = "smash"
		substate = "smashLoad"
		canMove = false
		smashpower += 1		
	}
	
	
	if sprite_index == s_VUSRelease
	{
		sprite_index = s_DraffIdle
		state = "idle"
		substate = ""
		speed = 0
		canMove = true
		smashpower = 0
		image_speed = 1
	}
	
}

//Animation end
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