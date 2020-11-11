/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1B7F6442
/// @DnDArgument : "code" "depth = -y$(13_10)$(13_10)if creator = Dravis and creator.sprite_index == s_DravAttack2$(13_10){$(13_10)	y = Dravis.y-50-Dravis.image_index*20$(13_10)	alarm [0] = 5$(13_10)}$(13_10)$(13_10)if creator = Dravis and creator.sprite_index == s_DravAttack3$(13_10){$(13_10)	if Dravis.image_index > 8$(13_10)	{$(13_10)	y = Dravis.y-200+Dravis.image_index*15$(13_10)	alarm [0] = 2$(13_10)	x += 10$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)	y = Dravis.y-200$(13_10)	alarm [0] = 10$(13_10)	}$(13_10)$(13_10)}"
depth = -y

if creator = Dravis and creator.sprite_index == s_DravAttack2
{
	y = Dravis.y-50-Dravis.image_index*20
	alarm [0] = 5
}

if creator = Dravis and creator.sprite_index == s_DravAttack3
{
	if Dravis.image_index > 8
	{
	y = Dravis.y-200+Dravis.image_index*15
	alarm [0] = 2
	x += 10
	}
	else
	{
	y = Dravis.y-200
	alarm [0] = 10
	}

}