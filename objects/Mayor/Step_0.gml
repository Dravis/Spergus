/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 165CC74F
/// @DnDArgument : "code" "/*$(13_10)self.depth = -y$(13_10)$(13_10)//Detect boundries$(13_10)if y >= 800$(13_10){$(13_10)	y = 800$(13_10)}$(13_10)if y <= 500$(13_10){$(13_10)	y = 500$(13_10)}$(13_10)*/$(13_10)$(13_10)event_inherited()$(13_10)$(13_10)/*if keyboard_check(selectbtn)$(13_10){$(13_10)	inventoryObj.isActivated = true$(13_10)	inventoryObj.x = x$(13_10)	inventoryObj.y = y$(13_10)}$(13_10)else$(13_10){$(13_10)	inventoryObj.isActivated = false$(13_10)}$(13_10)*/$(13_10)//Detect movements$(13_10)/*if (canMove and !isStunned) or isMovingTarget$(13_10){$(13_10)	if !isMovingTarget$(13_10)	{$(13_10)		if keyboard_check(upbtn)$(13_10)		{$(13_10)			vspeed = -12	$(13_10)		}$(13_10)		if keyboard_check(downbtn)$(13_10)		{$(13_10)			vspeed = 12	$(13_10)		}$(13_10)		if keyboard_check(leftbtn)$(13_10)		{$(13_10)			hspeed = -12$(13_10)			image_xscale = -1$(13_10)		}$(13_10)		if keyboard_check(rightbtn)$(13_10)		{$(13_10)			hspeed = 12$(13_10)			image_xscale = 1$(13_10)		}$(13_10)	} else$(13_10)		{$(13_10)		if keyboard_check(upbtn)$(13_10)		{$(13_10)			targetImage.vspeed = -12	$(13_10)		}$(13_10)		if keyboard_check(downbtn)$(13_10)		{$(13_10)			targetImage.vspeed = 12$(13_10)		}$(13_10)		if keyboard_check(leftbtn)$(13_10)		{$(13_10)			targetImage.hspeed = -12			$(13_10)		}$(13_10)		if keyboard_check(rightbtn)$(13_10)		{$(13_10)			targetImage.hspeed = 12$(13_10)		}$(13_10)	}$(13_10)	$(13_10)}$(13_10)$(13_10)if keyboard_check_released(upbtn) or keyboard_check_released(downbtn) $(13_10){$(13_10)	vspeed = 0$(13_10)}$(13_10)if keyboard_check_released(leftbtn) or keyboard_check_released(rightbtn) $(13_10){$(13_10)	hspeed = 0$(13_10)}$(13_10)$(13_10)if isStunned$(13_10){$(13_10)	if speed < 0$(13_10)		speed += 0.5$(13_10)	else$(13_10)		speed = 0$(13_10)}$(13_10)if keyboard_check(smashbtn) and state != "attack"$(13_10){$(13_10)	if substate == "smashLoad"$(13_10)	{$(13_10)		if backstep < 3$(13_10)		{$(13_10)		hspeed = -2*image_xscale$(13_10)		}$(13_10)		else$(13_10)		{$(13_10)		hspeed = 0$(13_10)		image_blend = c_aqua$(13_10)		}$(13_10)		vspeed = 0$(13_10)		state = "smash"$(13_10)		substate = "smashLoad"$(13_10)		canMove = false$(13_10)		sprite_index = s_DossLoad$(13_10)			}$(13_10)	$(13_10)	//if is in no substate$(13_10)	if substate == ""$(13_10)	{$(13_10)		hspeed = 0$(13_10)		vspeed = 0$(13_10)		canMove = false$(13_10)		state = "smash"$(13_10)		substate = "smashLoad"$(13_10)		sprite_index = s_DossLoad$(13_10)		/*if instance_position(x + sprite_height-768 + (image_xscale * 150), y-100, FoinBall) != ""$(13_10)		{$(13_10)		boule = instance_create_depth(x + sprite_height-768 + (image_xscale * 150), y-100 , 0, FoinBall)$(13_10)		}$(13_10)$(13_10)	}	$(13_10)	$(13_10)	/*$(13_10)if instance_exists(FoinBall)$(13_10){$(13_10)if boule.boulepower > 20			$(13_10)	{$(13_10)		boule.boulepower = 20$(13_10)	}$(13_10)	$(13_10)	if boule.boulepower > 3$(13_10)	{$(13_10)		if canStartTimer$(13_10)		{$(13_10)			image_blend = $FFFB00$(13_10)			alarm[10] = 10 - boule.boulepower/3$(13_10)			canStartTimer = false$(13_10)		}$(13_10)	}$(13_10)$(13_10)}$(13_10)$(13_10)}$(13_10)$(13_10)//On "E" key release$(13_10)if substate == "smashLoad" and !keyboard_check(smashbtn)$(13_10){$(13_10)$(13_10)	sprite_index= s_DossSprint$(13_10)	image_index = 0$(13_10)	image_blend = c_white$(13_10)	speed = 20*image_xscale*backstep/2$(13_10)	backstep = 0$(13_10)	state = ""$(13_10)	alarm[0] = 20*backstep$(13_10)	substate = ""$(13_10)	canMove = false$(13_10)	direction = 0$(13_10)$(13_10)	$(13_10)}$(13_10)if sprite_index = s_DossSprint$(13_10)	{$(13_10)	hb = instance_create_depth(x+200*image_xscale,y,-y,HitboxBlik)$(13_10)	hb.creator = Dossailto$(13_10)	}$(13_10)*/$(13_10)//Animations$(13_10)if (image_index > image_number - 1)$(13_10){$(13_10)$(13_10)	$(13_10)	$(13_10)	if sprite_index == s_DraffPotatoThrow$(13_10)	{$(13_10)		sprite_index = s_DraffIdle$(13_10)		state = "idle"$(13_10)		substate = ""$(13_10)		canMove = true		$(13_10)	}$(13_10)}$(13_10)$(13_10)//Animation end$(13_10)if sprite_index == s_MayorRun and speed == 0$(13_10){$(13_10)	sprite_index = s_MayorIdle$(13_10)	state = "idle"$(13_10)	substate = ""$(13_10)}$(13_10)$(13_10)if sprite_index == s_MayorIdle and speed != 0$(13_10){$(13_10)	sprite_index = s_MayorRun$(13_10)	state = "walk"$(13_10)	substate = ""$(13_10)}$(13_10)"
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
if keyboard_check(smashbtn) and state != "attack"
{
	if substate == "smashLoad"
	{
		if backstep < 3
		{
		hspeed = -2*image_xscale
		}
		else
		{
		hspeed = 0
		image_blend = c_aqua
		}
		vspeed = 0
		state = "smash"
		substate = "smashLoad"
		canMove = false
		sprite_index = s_DossLoad
			}
	
	//if is in no substate
	if substate == ""
	{
		hspeed = 0
		vspeed = 0
		canMove = false
		state = "smash"
		substate = "smashLoad"
		sprite_index = s_DossLoad
		/*if instance_position(x + sprite_height-768 + (image_xscale * 150), y-100, FoinBall) != ""
		{
		boule = instance_create_depth(x + sprite_height-768 + (image_xscale * 150), y-100 , 0, FoinBall)
		}

	}	
	
	/*
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
if substate == "smashLoad" and !keyboard_check(smashbtn)
{

	sprite_index= s_DossSprint
	image_index = 0
	image_blend = c_white
	speed = 20*image_xscale*backstep/2
	backstep = 0
	state = ""
	alarm[0] = 20*backstep
	substate = ""
	canMove = false
	direction = 0

	
}
if sprite_index = s_DossSprint
	{
	hb = instance_create_depth(x+200*image_xscale,y,-y,HitboxBlik)
	hb.creator = Dossailto
	}
*/
//Animations
if (image_index > image_number - 1)
{

	
	
	if sprite_index == s_DraffPotatoThrow
	{
		sprite_index = s_DraffIdle
		state = "idle"
		substate = ""
		canMove = true		
	}
}

//Animation end
if sprite_index == s_MayorRun and speed == 0
{
	sprite_index = s_MayorIdle
	state = "idle"
	substate = ""
}

if sprite_index == s_MayorIdle and speed != 0
{
	sprite_index = s_MayorRun
	state = "walk"
	substate = ""
}
/**/