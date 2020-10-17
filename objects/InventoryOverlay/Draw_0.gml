/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7F8B7666
/// @DnDArgument : "code" "if isActivated$(13_10){$(13_10)	draw_sprite(s_inventory, 0, x, y+200)$(13_10)	$(13_10)	for (i = 0; i<= array_length(items)-1; i+=1)$(13_10)	{$(13_10)		if items[i] == "HealthPotion"$(13_10)		{$(13_10)			draw_sprite(s_inventoryItemFrame, 0, x-122 + (i * 32) , y+175)$(13_10)			draw_sprite(s_healthPotion, 0, x-122 + (i * 32), y+175)$(13_10)		}$(13_10)	}$(13_10)}"
if isActivated
{
	draw_sprite(s_inventory, 0, x, y+200)
	
	for (i = 0; i<= array_length(items)-1; i+=1)
	{
		if items[i] == "HealthPotion"
		{
			draw_sprite(s_inventoryItemFrame, 0, x-122 + (i * 32) , y+175)
			draw_sprite(s_healthPotion, 0, x-122 + (i * 32), y+175)
		}
	}
}