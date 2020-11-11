/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 68E2AEC9
/// @DnDArgument : "code" "$(13_10)	if (SelectMode = 1)$(13_10)	{$(13_10)   global.Character1 = Slot$(13_10)   global.Character2 = ""$(13_10)    if (global.PlayerMode = 2)$(13_10)		{$(13_10)		SelectMode = 2$(13_10)		}$(13_10)	else$(13_10)		{$(13_10)		global.Character2 = ""$(13_10)		room_goto(r_Test)$(13_10)		}$(13_10)	$(13_10)	}$(13_10)$(13_10)"

	if (SelectMode = 1)
	{
   global.Character1 = Slot
   global.Character2 = ""
    if (global.PlayerMode = 2)
		{
		SelectMode = 2
		}
	else
		{
		global.Character2 = ""
		room_goto(r_Test)
		}
	
	}