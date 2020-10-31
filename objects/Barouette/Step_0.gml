/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 467FB4DC
/// @DnDArgument : "code" "if  y > startpoint + 100$(13_10){$(13_10)	depth = -y$(13_10)}$(13_10)$(13_10)if y >= -2$(13_10){$(13_10)	image_angle += rotspeed$(13_10)}$(13_10)$(13_10)$(13_10)if  y > startpoint + 475$(13_10){$(13_10)	$(13_10)	speed = 0$(13_10)	gravity = 0$(13_10)	rotspeed = 0$(13_10)$(13_10)}$(13_10)if y = startpoint$(13_10)	{$(13_10)					if Blik.image_xscale > 0$(13_10)		{$(13_10)			if x < Blik.x+200$(13_10)			{$(13_10)				x =  Blik.x+200$(13_10)			}$(13_10)			$(13_10)			if x > Blik.x+600$(13_10)			{$(13_10)				x =  Blik.x+600$(13_10)			}$(13_10)		}$(13_10)		$(13_10)		if Blik.image_xscale < 0$(13_10)		{$(13_10)			if x > Blik.x-400$(13_10)			{$(13_10)				x =  Blik.x-400$(13_10)			}$(13_10)			$(13_10)			if x < Blik.x-900$(13_10)			{$(13_10)				x =  Blik.x-900$(13_10)			}$(13_10)		}	$(13_10)	$(13_10)	if Blik.sprite_index = s_BlikCast1$(13_10)		{$(13_10)		if keyboard_check(Blik.leftbtn)$(13_10)		{$(13_10)			hspeed = -10$(13_10)		}$(13_10)		if keyboard_check(Blik.rightbtn)$(13_10)		{$(13_10)			hspeed = 10$(13_10)		}$(13_10)		$(13_10)		if keyboard_check_released(Blik.rightbtn)$(13_10)		{$(13_10)			hspeed = 0$(13_10)		}$(13_10)				if keyboard_check_released(Blik.leftbtn)$(13_10)		{$(13_10)			hspeed = 0$(13_10)		}$(13_10)		}$(13_10)	}"
if  y > startpoint + 100
{
	depth = -y
}

if y >= -2
{
	image_angle += rotspeed
}


if  y > startpoint + 475
{
	
	speed = 0
	gravity = 0
	rotspeed = 0

}
if y = startpoint
	{
					if Blik.image_xscale > 0
		{
			if x < Blik.x+200
			{
				x =  Blik.x+200
			}
			
			if x > Blik.x+600
			{
				x =  Blik.x+600
			}
		}
		
		if Blik.image_xscale < 0
		{
			if x > Blik.x-400
			{
				x =  Blik.x-400
			}
			
			if x < Blik.x-900
			{
				x =  Blik.x-900
			}
		}	
	
	if Blik.sprite_index = s_BlikCast1
		{
		if keyboard_check(Blik.leftbtn)
		{
			hspeed = -10
		}
		if keyboard_check(Blik.rightbtn)
		{
			hspeed = 10
		}
		
		if keyboard_check_released(Blik.rightbtn)
		{
			hspeed = 0
		}
				if keyboard_check_released(Blik.leftbtn)
		{
			hspeed = 0
		}
		}
	}