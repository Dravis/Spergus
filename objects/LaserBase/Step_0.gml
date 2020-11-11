/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 49210B3D
/// @DnDArgument : "code" "if (BriseMarc.image_xscale = 1)$(13_10){$(13_10)$(13_10)x = BriseMarc.x + BriseMarc.sprite_height-768 + (BriseMarc.image_xscale * 225) + BriseMarc.image_index -60$(13_10)y = BriseMarc.y-190$(13_10)}$(13_10)$(13_10)if (BriseMarc.image_xscale = -1)$(13_10){$(13_10)$(13_10)x = BriseMarc.x + BriseMarc.sprite_height-768 - 125 - BriseMarc.image_index +60$(13_10)y = BriseMarc.y-190$(13_10)}$(13_10)$(13_10)depth = -y-100$(13_10)image_angle -= 3$(13_10)if (BriseMarc.image_index < 45)$(13_10){$(13_10)	if BriseMarc.sprite_index == s_PMLazer$(13_10)	{$(13_10)$(13_10)		instance_destroy()$(13_10)		$(13_10)	}$(13_10)	}$(13_10)	$(13_10)depth = -y-200"
if (BriseMarc.image_xscale = 1)
{

x = BriseMarc.x + BriseMarc.sprite_height-768 + (BriseMarc.image_xscale * 225) + BriseMarc.image_index -60
y = BriseMarc.y-190
}

if (BriseMarc.image_xscale = -1)
{

x = BriseMarc.x + BriseMarc.sprite_height-768 - 125 - BriseMarc.image_index +60
y = BriseMarc.y-190
}

depth = -y-100
image_angle -= 3
if (BriseMarc.image_index < 45)
{
	if BriseMarc.sprite_index == s_PMLazer
	{

		instance_destroy()
		
	}
	}
	
depth = -y-200