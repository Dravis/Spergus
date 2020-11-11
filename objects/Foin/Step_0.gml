/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 165CC74F
/// @DnDArgument : "code" "/*$(13_10)self.depth = -y$(13_10)$(13_10)//Detect boundries$(13_10)if y >= 800$(13_10){$(13_10)	y = 800$(13_10)}$(13_10)if y <= 500$(13_10){$(13_10)	y = 500$(13_10)}$(13_10)*/$(13_10)$(13_10)event_inherited()$(13_10)$(13_10)/*if keyboard_check(selectbtn)$(13_10){$(13_10)	inventoryObj.isActivated = true$(13_10)	inventoryObj.x = x$(13_10)	inventoryObj.y = y$(13_10)}$(13_10)else$(13_10){$(13_10)	inventoryObj.isActivated = false$(13_10)}$(13_10)*/$(13_10)//Detect movements$(13_10)/*if (canMove and !isStunned) or isMovingTarget$(13_10){$(13_10)	if !isMovingTarget$(13_10)	{$(13_10)		if keyboard_check(upbtn)$(13_10)		{$(13_10)			vspeed = -12	$(13_10)		}$(13_10)		if keyboard_check(downbtn)$(13_10)		{$(13_10)			vspeed = 12	$(13_10)		}$(13_10)		if keyboard_check(leftbtn)$(13_10)		{$(13_10)			hspeed = -12$(13_10)			image_xscale = -1$(13_10)		}$(13_10)		if keyboard_check(rightbtn)$(13_10)		{$(13_10)			hspeed = 12$(13_10)			image_xscale = 1$(13_10)		}$(13_10)	} else$(13_10)		{$(13_10)		if keyboard_check(upbtn)$(13_10)		{$(13_10)			targetImage.vspeed = -12	$(13_10)		}$(13_10)		if keyboard_check(downbtn)$(13_10)		{$(13_10)			targetImage.vspeed = 12$(13_10)		}$(13_10)		if keyboard_check(leftbtn)$(13_10)		{$(13_10)			targetImage.hspeed = -12			$(13_10)		}$(13_10)		if keyboard_check(rightbtn)$(13_10)		{$(13_10)			targetImage.hspeed = 12$(13_10)		}$(13_10)	}$(13_10)	$(13_10)}$(13_10)$(13_10)if keyboard_check_released(upbtn) or keyboard_check_released(downbtn) $(13_10){$(13_10)	vspeed = 0$(13_10)}$(13_10)if keyboard_check_released(leftbtn) or keyboard_check_released(rightbtn) $(13_10){$(13_10)	hspeed = 0$(13_10)}$(13_10)$(13_10)if isStunned$(13_10){$(13_10)	if speed < 0$(13_10)		speed += 0.5$(13_10)	else$(13_10)		speed = 0$(13_10)}$(13_10)*/$(13_10)$(13_10)if keyboard_check(basicbtn) and state != "attack"$(13_10){$(13_10)	if substate == "smashLoad"$(13_10)	{$(13_10)		hspeed = 0$(13_10)		vspeed = 0$(13_10)		state = "smash"$(13_10)		substate = "smashLoad"$(13_10)		canMove = false$(13_10)		sprite_index = s_FoinLoad$(13_10)			}$(13_10)	$(13_10)	//if is in no substate$(13_10)	if substate == ""$(13_10)	{$(13_10)		hspeed = 0$(13_10)		vspeed = 0$(13_10)		canMove = false$(13_10)		state = "smash"$(13_10)		substate = "smashLoad"$(13_10)		sprite_index = s_FoinLoad$(13_10)		if instance_position(x + sprite_height-768 + (image_xscale * 150), y-100, FoinBall) != ""$(13_10)		{$(13_10)		boule = instance_create_depth(x + sprite_height-768 + (image_xscale * 150), y-100 , 0, FoinBall)$(13_10)		}$(13_10)	}	$(13_10)	$(13_10)if instance_exists(FoinBall)$(13_10){$(13_10)if boule.boulepower > 20			$(13_10)	{$(13_10)		boule.boulepower = 20$(13_10)	}$(13_10)	$(13_10)	if boule.boulepower > 3$(13_10)	{$(13_10)		if canStartTimer$(13_10)		{$(13_10)			image_blend = $FFFB00$(13_10)			alarm[10] = 10 - boule.boulepower/3$(13_10)			canStartTimer = false$(13_10)		}$(13_10)	}$(13_10)$(13_10)}$(13_10)}$(13_10)$(13_10)//On "E" key release$(13_10)if substate == "smashLoad" and !keyboard_check(basicbtn)$(13_10){$(13_10)	if image_index = image_number-1$(13_10)	{$(13_10)	sprite_index= s_FoinRelease$(13_10)	image_index = 0$(13_10)	state = ""$(13_10)	substate = ""$(13_10)	canMove = false$(13_10)	canStartTimer = true$(13_10)	boule.direction = 0$(13_10)	boule.speed= 30*image_xscale$(13_10)	boule.alarm[0]=60$(13_10)	}$(13_10)}$(13_10)$(13_10)//Animations$(13_10)if (image_index > image_number - 1)$(13_10){$(13_10)if sprite_index == s_FoinLoad$(13_10)	{$(13_10)		image_index = image_number - 3$(13_10)		state = "smash"$(13_10)		substate = "smashLoad"$(13_10)		canMove = false$(13_10)		if instance_exists(FoinBall)$(13_10)		{$(13_10)		boule.boulepower += 1	$(13_10)		}$(13_10)		if boule.boulepower > 4$(13_10)		{$(13_10)		smoke = instance_create_depth(x-50*image_xscale, y+235, -y, Smoke4)$(13_10)		smoke.direction = 0$(13_10)		smoke.speed = image_xscale*-20$(13_10)		var size = random_range(0.1, 0.6)$(13_10)		smoke.image_xscale = size*image_xscale$(13_10)		smoke.image_yscale = size$(13_10)		}$(13_10)	}$(13_10)	$(13_10)	$(13_10)	if sprite_index == s_FoinRelease$(13_10)	{$(13_10)		sprite_index = s_FoinIdle$(13_10)		state = "idle"$(13_10)		substate = ""$(13_10)		speed = 0$(13_10)		canMove = true$(13_10)		image_speed = 1$(13_10)	}$(13_10)}$(13_10)$(13_10)//Animation end$(13_10)if sprite_index == s_FoinWalk and speed == 0$(13_10){$(13_10)	sprite_index = s_FoinIdle$(13_10)	state = "idle"$(13_10)	substate = ""$(13_10)}$(13_10)$(13_10)if sprite_index == s_FoinIdle and speed != 0$(13_10){$(13_10)	sprite_index = s_FoinWalk$(13_10)	state = "walk"$(13_10)	substate = ""$(13_10)}$(13_10)"
/*
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
*/

event_inherited()

/*if keyboard_check(selectbtn)
{
	inventoryObj.isActivated = true
	inventoryObj.x = x
	inventoryObj.y = y
}
else
{
	inventoryObj.isActivated = false
}
*/
//Detect movements
/*if (canMove and !isStunned) or isMovingTarget
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

if isStunned
{
	if speed < 0
		speed += 0.5
	else
		speed = 0
}
*/

if keyboard_check(basicbtn) and state != "attack"
{
	if substate == "smashLoad"
	{
		hspeed = 0
		vspeed = 0
		state = "smash"
		substate = "smashLoad"
		canMove = false
		sprite_index = s_FoinLoad
			}
	
	//if is in no substate
	if substate == ""
	{
		hspeed = 0
		vspeed = 0
		canMove = false
		state = "smash"
		substate = "smashLoad"
		sprite_index = s_FoinLoad
		if instance_position(x + sprite_height-768 + (image_xscale * 150), y-100, FoinBall) != ""
		{
		boule = instance_create_depth(x + sprite_height-768 + (image_xscale * 150), y-100 , 0, FoinBall)
		}
	}	
	
if instance_exists(FoinBall)
{
if boule.boulepower > 20			
	{
		boule.boulepower = 20
	}
	
	if boule.boulepower > 3
	{
		if canStartTimer
		{
			image_blend = $FFFB00
			alarm[10] = 10 - boule.boulepower/3
			canStartTimer = false
		}
	}

}
}

//On "E" key release
if substate == "smashLoad" and !keyboard_check(basicbtn)
{
	if image_index = image_number-1
	{
	sprite_index= s_FoinRelease
	image_index = 0
	state = ""
	substate = ""
	canMove = false
	canStartTimer = true
	boule.direction = 0
	boule.speed= 30*image_xscale
	boule.alarm[0]=60
	}
}

//Animations
if (image_index > image_number - 1)
{
if sprite_index == s_FoinLoad
	{
		image_index = image_number - 3
		state = "smash"
		substate = "smashLoad"
		canMove = false
		if instance_exists(FoinBall)
		{
		boule.boulepower += 1	
		}
		if boule.boulepower > 4
		{
		smoke = instance_create_depth(x-50*image_xscale, y+235, -y, Smoke4)
		smoke.direction = 0
		smoke.speed = image_xscale*-20
		var size = random_range(0.1, 0.6)
		smoke.image_xscale = size*image_xscale
		smoke.image_yscale = size
		}
	}
	
	
	if sprite_index == s_FoinRelease
	{
		sprite_index = s_FoinIdle
		state = "idle"
		substate = ""
		speed = 0
		canMove = true
		image_speed = 1
	}
}

//Animation end
if sprite_index == s_FoinWalk and speed == 0
{
	sprite_index = s_FoinIdle
	state = "idle"
	substate = ""
}

if sprite_index == s_FoinIdle and speed != 0
{
	sprite_index = s_FoinWalk
	state = "walk"
	substate = ""
}
/**/