/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 224712E1
/// @DnDArgument : "code" "event_inherited()$(13_10)/*$(13_10)alarm[0] = 30$(13_10)canMove = true$(13_10)isHit = false$(13_10)state = "idle"$(13_10)$(13_10)$(13_10)hp = 75$(13_10)maxHp = 100$(13_10)$(13_10)upbtn = 0$(13_10)downbtn = 0$(13_10)leftbtn = 0$(13_10)rightbtn = 0$(13_10)rangedbtn = 0$(13_10)basicbtn = 0$(13_10)selectbtn = 0$(13_10)smashbtn = 0$(13_10)	*/$(13_10)if (global.Character1 = 2)$(13_10)	{$(13_10)		upbtn = vk_up$(13_10)		downbtn = vk_down$(13_10)		leftbtn = vk_left$(13_10)		rightbtn = vk_right$(13_10)		rangedbtn = ord("E")$(13_10)		basicbtn = vk_space$(13_10)		selectbtn = vk_tab$(13_10)		smashbtn = ord("F")$(13_10)	}$(13_10)if (global.Character2 = 2)$(13_10)	{$(13_10)		upbtn = ord("W")$(13_10)		downbtn = ord("S")$(13_10)		leftbtn = ord("A")$(13_10)		rightbtn = ord("D")$(13_10)		rangedbtn = ord("R")$(13_10)		basicbtn = ord("Q")$(13_10)		selectbtn = ord("Z")$(13_10)		smashbtn = ord("G")$(13_10)	}$(13_10)	$(13_10)	chain = 1$(13_10)	stance = "pied"$(13_10)	brasstance = "normal"$(13_10)	canAttack = true$(13_10)	jumpload = 0$(13_10)	startpoint = 0"
event_inherited()
/*
alarm[0] = 30
canMove = true
isHit = false
state = "idle"


hp = 75
maxHp = 100

upbtn = 0
downbtn = 0
leftbtn = 0
rightbtn = 0
rangedbtn = 0
basicbtn = 0
selectbtn = 0
smashbtn = 0
	*/
if (global.Character1 = 2)
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
if (global.Character2 = 2)
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
	
	chain = 1
	stance = "pied"
	brasstance = "normal"
	canAttack = true
	jumpload = 0
	startpoint = 0/**/