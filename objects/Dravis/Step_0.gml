/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 165CC74F
/// @DnDArgument : "code" "event_inherited()$(13_10)//self.depth = -y$(13_10)$(13_10)//Detect boundries$(13_10)/*if y >= 750$(13_10){$(13_10)	y = 750$(13_10)}$(13_10)if y <= 340$(13_10){$(13_10)	y = 340$(13_10)}*/$(13_10)$(13_10)//Detects attack$(13_10)if keyboard_check(basicbtn) and sprite_index != s_DravAttack and stance = "pied" and canAttack$(13_10){$(13_10)	hspeed = 0$(13_10)	vspeed = 0$(13_10)	canMove = false$(13_10)		 if chain = 1 or chain = 3$(13_10)		 {$(13_10)			image_index = 0$(13_10)		sprite_index = s_DravAttack$(13_10)		hb = instance_create_depth(x + sprite_height-768 + (image_xscale * 125), y-50 , 0, HitboxBlik)$(13_10)		hb.creator = Dravis$(13_10)		hb.image_yscale = 0.5$(13_10)		 }$(13_10)		  if chain = 2 and sprite_index != s_DravAttack2$(13_10)		 {$(13_10)			image_index = 0$(13_10)		sprite_index = s_DravAttack2$(13_10)		hb = instance_create_depth(x + sprite_height-768 + (image_xscale * 125), y-50 , 0, HitboxBlik)$(13_10)		hb.creator = Dravis$(13_10)		hb.image_yscale = 0.5$(13_10)		 }$(13_10)		 	  if chain = 4 and sprite_index != s_DravAttack3$(13_10)		 {$(13_10)			image_index = 0$(13_10)		sprite_index = s_DravAttack3$(13_10)		hb = instance_create_depth(x + sprite_height-768 + (image_xscale * 125), y-200 , 0, HitboxBlik)$(13_10)		hb.creator = Dravis$(13_10)		hb.image_yscale = 0.5$(13_10)		 }$(13_10)}$(13_10)$(13_10)$(13_10)if keyboard_check(basicbtn) and instance_exists(DravBrasGauche) and DravBrasGauche.sprite_index != s_BrasGaucheAttack and (sprite_index == s_DravIdleRide or sprite_index == s_DravRideKick)$(13_10){$(13_10)	$(13_10)brasstance = "attack"	$(13_10)}$(13_10)$(13_10)if keyboard_check(rangedbtn)$(13_10){$(13_10)	hspeed = 0$(13_10)	vspeed = 0$(13_10)	canMove = false$(13_10)	if stance = "pied" and sprite_index != s_DravDropSkate$(13_10)	{$(13_10)	sprite_index = s_DravDropSkate$(13_10)	canAttack = false$(13_10)	}$(13_10)		if stance = "skate" and sprite_index != s_DravDropSkate$(13_10)	{$(13_10)	stance = "pied"$(13_10)	sprite_index = s_DravDropSkate$(13_10)	image_index = 32$(13_10)	image_speed = -1$(13_10)	canAttack = false$(13_10)	}$(13_10)}$(13_10)$(13_10)//Smashes$(13_10)if keyboard_check(smashbtn) and state != "attack" and stance = "pied"$(13_10){$(13_10)	if substate == "smashLoad"$(13_10)	{$(13_10)		vspeed = 0$(13_10)		state = "smash"$(13_10)		substate = "smashLoad"$(13_10)		canMove = false$(13_10)		sprite_index = s_DravLoad2$(13_10)			}$(13_10)	$(13_10)	//if is in no substate$(13_10)	if substate == ""$(13_10)	{$(13_10)		hspeed = 0$(13_10)		vspeed = 0$(13_10)		canMove = false$(13_10)		state = "smash"$(13_10)		substate = "smashLoad"$(13_10)		sprite_index = s_DravLoad2$(13_10)	}	$(13_10)}$(13_10)$(13_10)//On "E" key release$(13_10)if substate == "smashLoad" and !keyboard_check(smashbtn) and stance = "pied"$(13_10){$(13_10)	startpoint = y$(13_10)	sprite_index= s_DravSmashJump$(13_10)	image_index = 0$(13_10)	speed = 20*image_xscale*jumpload/2$(13_10)	jumpload = 0$(13_10)	state = ""$(13_10)	alarm[0] = 20*jumpload$(13_10)	substate = ""$(13_10)	canMove = false$(13_10)	direction = 270$(13_10)$(13_10)	$(13_10)}$(13_10)$(13_10)if keyboard_check(smashbtn) and state != "attack" and stance = "skate"$(13_10){$(13_10)	if substate == "smashLoad"$(13_10)	{$(13_10)		hspeed = 0$(13_10)		vspeed = 0$(13_10)		state = "smash"$(13_10)		substate = "smashLoad"$(13_10)		canMove = false$(13_10)		sprite_index = s_DravLoad$(13_10)		instance_destroy(DravBrasGauche)$(13_10)			}$(13_10)	$(13_10)	//if is in no substate$(13_10)	if substate == ""$(13_10)	{$(13_10)		hspeed = 0$(13_10)		vspeed = 0$(13_10)		canMove = false$(13_10)		state = "smash"$(13_10)		substate = "smashLoad"$(13_10)		sprite_index = s_DravLoad$(13_10)	}	$(13_10)}$(13_10)$(13_10)//On "E" key release$(13_10)if substate == "smashLoad" and !keyboard_check(smashbtn) and stance = "skate"$(13_10){$(13_10)	sprite_index= s_DravThrow$(13_10)	image_index = 0$(13_10)	jumpload = 0$(13_10)	state = ""$(13_10)	substate = ""$(13_10)	canMove = false$(13_10)$(13_10)	$(13_10)}$(13_10)//Skate Movements$(13_10)$(13_10)if stance = "skate" and state != "smash" and sprite_index != s_DravThrow$(13_10){$(13_10)if canMove$(13_10){$(13_10)	$(13_10)	if keyboard_check(upbtn)$(13_10)	{	$(13_10)	$(13_10)		vspeed = -15$(13_10)		}$(13_10)		$(13_10)	if keyboard_check(downbtn)$(13_10)	{$(13_10)		vspeed = 15$(13_10)		$(13_10)	}$(13_10)	if keyboard_check(leftbtn)$(13_10)	{$(13_10)		image_xscale = -1$(13_10)		if sprite_index != s_DravRideKick$(13_10)		{$(13_10)	sprite_index = s_DravRideKick$(13_10)	image_index = 38$(13_10)		}$(13_10)		if sprite_index == s_DravRideKick and (image_index = 1 or image_index = 41)$(13_10)		{$(13_10)		hspeed = -18$(13_10)		}$(13_10)		if sprite_index == s_DravRideKick and (image_index != 1 or image_index != 41)$(13_10)		{$(13_10)			if hspeed < 0$(13_10)			{$(13_10)				hspeed += 0.1$(13_10)			}$(13_10)				}$(13_10)		$(13_10)	}$(13_10)	if keyboard_check(rightbtn)$(13_10)	{$(13_10)		image_xscale = 1$(13_10)			if sprite_index != s_DravRideKick$(13_10)		{$(13_10)	sprite_index = s_DravRideKick$(13_10)	image_index = 38$(13_10)		}$(13_10)		if sprite_index == s_DravRideKick and (image_index = 1 or image_index = 41)$(13_10)		{$(13_10)		hspeed = 18$(13_10)		}$(13_10)		if sprite_index == s_DravRideKick and (image_index != 1 or image_index != 41)$(13_10)		{$(13_10)			if hspeed > 0$(13_10)			$(13_10)			{hspeed -= 0.1}$(13_10)		}	$(13_10)		$(13_10)}$(13_10)}$(13_10)if keyboard_check(upbtn) = false and keyboard_check(downbtn) = false and keyboard_check(leftbtn) =false and keyboard_check(rightbtn) = false and state != "smashLoad"$(13_10){$(13_10)	if sprite_index != s_DravIdleRide$(13_10)	{$(13_10)	sprite_index = s_DravIdleRide$(13_10)	}$(13_10)if hspeed < 0$(13_10)	{$(13_10)		if image_xscale = -1$(13_10)		{$(13_10)		hspeed += 0.2$(13_10)		}$(13_10)		if image_xscale = 1$(13_10)		{$(13_10)		hspeed += 0.4$(13_10)		}$(13_10)	}$(13_10)	$(13_10)if hspeed > 0$(13_10)	{$(13_10)		if image_xscale = 1$(13_10)		{$(13_10)		hspeed -= 0.2$(13_10)		}$(13_10)				if image_xscale = -1$(13_10)		{$(13_10)		hspeed -= 0.4$(13_10)		}$(13_10)	}$(13_10)}$(13_10)if keyboard_check_released(upbtn) or keyboard_check_released(downbtn)$(13_10){$(13_10)	vspeed = 0$(13_10)}$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)//Animations$(13_10)if image_index > image_number - 1$(13_10){$(13_10)	if sprite_index == s_DravSmashStomp$(13_10){$(13_10)$(13_10)image_index = image_number$(13_10)}$(13_10)	if sprite_index == s_DravThrow$(13_10){$(13_10)	sprite_index = s_DravStand$(13_10)	stance = "pied"$(13_10)	canMove = true$(13_10)	canAttack = true$(13_10)}$(13_10)	$(13_10)	if (sprite_index == s_DravLoad2) and keyboard_check(smashbtn)$(13_10)$(13_10){$(13_10)	image_index = image_number - 5$(13_10)	$(13_10)}$(13_10)	if (sprite_index == s_DravLoad) and keyboard_check(smashbtn)$(13_10)$(13_10){$(13_10)	image_index = image_number - 5$(13_10)	$(13_10)}$(13_10)if (sprite_index == s_DravSmashStomp)$(13_10)$(13_10){$(13_10)	image_index = image_number - 6$(13_10)	$(13_10)}$(13_10)if (sprite_index == s_DravSmashJump)$(13_10)$(13_10){$(13_10)	y -= 500$(13_10)	sprite_index = s_DravSmashStomp$(13_10)}$(13_10)$(13_10)if (sprite_index == s_DravAttack)$(13_10)$(13_10){$(13_10)	sprite_index = s_DravStand$(13_10)	canMove = true$(13_10)	if keyboard_check_released(basicbtn)$(13_10)	{	$(13_10)	chain = 1$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)	chain += 1$(13_10)	}$(13_10)}$(13_10)if (sprite_index == s_DravAttack2)$(13_10)$(13_10){$(13_10)	sprite_index = s_DravStand$(13_10)	canMove = true$(13_10)	if keyboard_check_released(basicbtn)$(13_10)	{	$(13_10)	chain = 1$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)	chain += 1$(13_10)	}$(13_10)}$(13_10)if (sprite_index == s_DravAttack3)$(13_10)$(13_10){$(13_10)	sprite_index = s_DravStand$(13_10)	canMove = true$(13_10)	if keyboard_check_released(basicbtn)$(13_10)	{	$(13_10)	chain = 1$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)	chain = 1$(13_10)	}$(13_10)}$(13_10)$(13_10)if (sprite_index == s_DravDropSkate) and image_speed = 1$(13_10)$(13_10){$(13_10)	stance = "skate"$(13_10)	sprite_index = s_DravIdleRide$(13_10)	instance_create_depth(x,y,depth+1,DravBrasGauche)$(13_10)	canMove = true$(13_10)	canAttack = true$(13_10)}$(13_10)}$(13_10)$(13_10)if sprite_index == s_DravRuns and speed == 0 and stance = "pied"$(13_10){$(13_10)	sprite_index = s_DravStand$(13_10)}$(13_10)$(13_10)if sprite_index == s_DravStand and speed != 0 and stance = "pied"$(13_10){$(13_10)	sprite_index = s_DravRuns$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)if image_index = 1$(13_10){$(13_10)	if (sprite_index == s_DravDropSkate) and image_speed = -1$(13_10)$(13_10){$(13_10)	$(13_10)	sprite_index = s_DravStand$(13_10)	canMove = true$(13_10)	image_speed = 1$(13_10)	stance = "pied"$(13_10)	canAttack = true$(13_10)}$(13_10)$(13_10)}$(13_10)$(13_10)if sprite_index == s_DravSmashStomp$(13_10){$(13_10)	if y < startpoint+125$(13_10)	{$(13_10)	vspeed =  30$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		vspeed = 0$(13_10)		$(13_10)	}$(13_10)if vspeed != 0$(13_10)		{$(13_10)	alarm[2] = 10$(13_10)		}$(13_10)}$(13_10)$(13_10)if sprite_index == s_DravSmashJump$(13_10){$(13_10)	y -= 20$(13_10)	if image_index > 18$(13_10)	{$(13_10)		x += 10*image_xscale$(13_10)	}$(13_10)}	$(13_10)	if sprite_index == s_DravThrow and image_index > 11 and instance_exists(DravSkate) = false$(13_10){$(13_10)	board = instance_create_depth(x+100*image_xscale,y-50,depth,DravSkate)$(13_10)}"
event_inherited()
//self.depth = -y

//Detect boundries
/*if y >= 750
{
	y = 750
}
if y <= 340
{
	y = 340
}*/

//Detects attack
if keyboard_check(basicbtn) and sprite_index != s_DravAttack and stance = "pied" and canAttack
{
	hspeed = 0
	vspeed = 0
	canMove = false
		 if chain = 1 or chain = 3
		 {
			image_index = 0
		sprite_index = s_DravAttack
		hb = instance_create_depth(x + sprite_height-768 + (image_xscale * 125), y-50 , 0, HitboxBlik)
		hb.creator = Dravis
		hb.image_yscale = 0.5
		 }
		  if chain = 2 and sprite_index != s_DravAttack2
		 {
			image_index = 0
		sprite_index = s_DravAttack2
		hb = instance_create_depth(x + sprite_height-768 + (image_xscale * 125), y-50 , 0, HitboxBlik)
		hb.creator = Dravis
		hb.image_yscale = 0.5
		 }
		 	  if chain = 4 and sprite_index != s_DravAttack3
		 {
			image_index = 0
		sprite_index = s_DravAttack3
		hb = instance_create_depth(x + sprite_height-768 + (image_xscale * 125), y-200 , 0, HitboxBlik)
		hb.creator = Dravis
		hb.image_yscale = 0.5
		 }
}


if keyboard_check(basicbtn) and instance_exists(DravBrasGauche) and DravBrasGauche.sprite_index != s_BrasGaucheAttack and (sprite_index == s_DravIdleRide or sprite_index == s_DravRideKick)
{
	
brasstance = "attack"	
}

if keyboard_check(rangedbtn)
{
	hspeed = 0
	vspeed = 0
	canMove = false
	if stance = "pied" and sprite_index != s_DravDropSkate
	{
	sprite_index = s_DravDropSkate
	canAttack = false
	}
		if stance = "skate" and sprite_index != s_DravDropSkate
	{
	stance = "pied"
	sprite_index = s_DravDropSkate
	image_index = 32
	image_speed = -1
	canAttack = false
	}
}

//Smashes
if keyboard_check(smashbtn) and state != "attack" and stance = "pied"
{
	if substate == "smashLoad"
	{
		vspeed = 0
		state = "smash"
		substate = "smashLoad"
		canMove = false
		sprite_index = s_DravLoad2
			}
	
	//if is in no substate
	if substate == ""
	{
		hspeed = 0
		vspeed = 0
		canMove = false
		state = "smash"
		substate = "smashLoad"
		sprite_index = s_DravLoad2
	}	
}

//On "E" key release
if substate == "smashLoad" and !keyboard_check(smashbtn) and stance = "pied"
{
	startpoint = y
	sprite_index= s_DravSmashJump
	image_index = 0
	speed = 20*image_xscale*jumpload/2
	jumpload = 0
	state = ""
	alarm[0] = 20*jumpload
	substate = ""
	canMove = false
	direction = 270

	
}

if keyboard_check(smashbtn) and state != "attack" and stance = "skate"
{
	if substate == "smashLoad"
	{
		hspeed = 0
		vspeed = 0
		state = "smash"
		substate = "smashLoad"
		canMove = false
		sprite_index = s_DravLoad
		instance_destroy(DravBrasGauche)
			}
	
	//if is in no substate
	if substate == ""
	{
		hspeed = 0
		vspeed = 0
		canMove = false
		state = "smash"
		substate = "smashLoad"
		sprite_index = s_DravLoad
	}	
}

//On "E" key release
if substate == "smashLoad" and !keyboard_check(smashbtn) and stance = "skate"
{
	sprite_index= s_DravThrow
	image_index = 0
	jumpload = 0
	state = ""
	substate = ""
	canMove = false

	
}
//Skate Movements

if stance = "skate" and state != "smash" and sprite_index != s_DravThrow
{
if canMove
{
	
	if keyboard_check(upbtn)
	{	
	
		vspeed = -15
		}
		
	if keyboard_check(downbtn)
	{
		vspeed = 15
		
	}
	if keyboard_check(leftbtn)
	{
		image_xscale = -1
		if sprite_index != s_DravRideKick
		{
	sprite_index = s_DravRideKick
	image_index = 38
		}
		if sprite_index == s_DravRideKick and (image_index = 1 or image_index = 41)
		{
		hspeed = -18
		}
		if sprite_index == s_DravRideKick and (image_index != 1 or image_index != 41)
		{
			if hspeed < 0
			{
				hspeed += 0.1
			}
				}
		
	}
	if keyboard_check(rightbtn)
	{
		image_xscale = 1
			if sprite_index != s_DravRideKick
		{
	sprite_index = s_DravRideKick
	image_index = 38
		}
		if sprite_index == s_DravRideKick and (image_index = 1 or image_index = 41)
		{
		hspeed = 18
		}
		if sprite_index == s_DravRideKick and (image_index != 1 or image_index != 41)
		{
			if hspeed > 0
			
			{hspeed -= 0.1}
		}	
		
}
}
if keyboard_check(upbtn) = false and keyboard_check(downbtn) = false and keyboard_check(leftbtn) =false and keyboard_check(rightbtn) = false and state != "smashLoad"
{
	if sprite_index != s_DravIdleRide
	{
	sprite_index = s_DravIdleRide
	}
if hspeed < 0
	{
		if image_xscale = -1
		{
		hspeed += 0.2
		}
		if image_xscale = 1
		{
		hspeed += 0.4
		}
	}
	
if hspeed > 0
	{
		if image_xscale = 1
		{
		hspeed -= 0.2
		}
				if image_xscale = -1
		{
		hspeed -= 0.4
		}
	}
}
if keyboard_check_released(upbtn) or keyboard_check_released(downbtn)
{
	vspeed = 0
}
}



//Animations
if image_index > image_number - 1
{
	if sprite_index == s_DravSmashStomp
{

image_index = image_number
}
	if sprite_index == s_DravThrow
{
	sprite_index = s_DravStand
	stance = "pied"
	canMove = true
	canAttack = true
}
	
	if (sprite_index == s_DravLoad2) and keyboard_check(smashbtn)

{
	image_index = image_number - 5
	
}
	if (sprite_index == s_DravLoad) and keyboard_check(smashbtn)

{
	image_index = image_number - 5
	
}
if (sprite_index == s_DravSmashStomp)

{
	image_index = image_number - 6
	
}
if (sprite_index == s_DravSmashJump)

{
	y -= 500
	sprite_index = s_DravSmashStomp
}

if (sprite_index == s_DravAttack)

{
	sprite_index = s_DravStand
	canMove = true
	if keyboard_check_released(basicbtn)
	{	
	chain = 1
	}
	else
	{
	chain += 1
	}
}
if (sprite_index == s_DravAttack2)

{
	sprite_index = s_DravStand
	canMove = true
	if keyboard_check_released(basicbtn)
	{	
	chain = 1
	}
	else
	{
	chain += 1
	}
}
if (sprite_index == s_DravAttack3)

{
	sprite_index = s_DravStand
	canMove = true
	if keyboard_check_released(basicbtn)
	{	
	chain = 1
	}
	else
	{
	chain = 1
	}
}

if (sprite_index == s_DravDropSkate) and image_speed = 1

{
	stance = "skate"
	sprite_index = s_DravIdleRide
	instance_create_depth(x,y,depth+1,DravBrasGauche)
	canMove = true
	canAttack = true
}
}

if sprite_index == s_DravRuns and speed == 0 and stance = "pied"
{
	sprite_index = s_DravStand
}

if sprite_index == s_DravStand and speed != 0 and stance = "pied"
{
	sprite_index = s_DravRuns
}



if image_index = 1
{
	if (sprite_index == s_DravDropSkate) and image_speed = -1

{
	
	sprite_index = s_DravStand
	canMove = true
	image_speed = 1
	stance = "pied"
	canAttack = true
}

}

if sprite_index == s_DravSmashStomp
{
	if y < startpoint+125
	{
	vspeed =  30
	}
	else
	{
		vspeed = 0
		
	}
if vspeed != 0
		{
	alarm[2] = 10
		}
}

if sprite_index == s_DravSmashJump
{
	y -= 20
	if image_index > 18
	{
		x += 10*image_xscale
	}
}	
	if sprite_index == s_DravThrow and image_index > 11 and instance_exists(DravSkate) = false
{
	board = instance_create_depth(x+100*image_xscale,y-50,depth,DravSkate)
}/**/