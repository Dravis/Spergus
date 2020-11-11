/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5299AD19
/// @DnDArgument : "code" "event_inherited()$(13_10)PlayerNumber = 8$(13_10)boulepower = 0$(13_10)canStartTimer = true$(13_10)$(13_10)if (global.Character1 = PlayerNumber)$(13_10){$(13_10)		upbtn = vk_up$(13_10)		downbtn = vk_down$(13_10)		leftbtn = vk_left$(13_10)		rightbtn = vk_right$(13_10)		rangedbtn = ord("E")$(13_10)		basicbtn = vk_space$(13_10)		selectbtn = vk_tab$(13_10)		smashbtn = ord("F")$(13_10)}$(13_10)$(13_10)if (global.Character2 = PlayerNumber)$(13_10)	{$(13_10)		upbtn = ord("W")$(13_10)		downbtn = ord("S")$(13_10)		leftbtn = ord("A")$(13_10)		rightbtn = ord("D")$(13_10)		rangedbtn = ord("R")$(13_10)		basicbtn = ord("Q")$(13_10)		selectbtn = ord("Z")$(13_10)		smashbtn = ord("G")$(13_10)	}"
event_inherited()
PlayerNumber = 8
boulepower = 0
canStartTimer = true

if (global.Character1 = PlayerNumber)
{
		upbtn = vk_up
		downbtn = vk_down
		leftbtn = vk_left
		rightbtn = vk_right
		rangedbtn = ord("E")
		basicbtn = vk_space
		selectbtn = vk_tab
		smashbtn = ord("F")
}

if (global.Character2 = PlayerNumber)
	{
		upbtn = ord("W")
		downbtn = ord("S")
		leftbtn = ord("A")
		rightbtn = ord("D")
		rangedbtn = ord("R")
		basicbtn = ord("Q")
		selectbtn = ord("Z")
		smashbtn = ord("G")
	}