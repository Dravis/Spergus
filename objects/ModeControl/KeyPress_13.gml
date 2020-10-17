/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5AEAD452
/// @DnDArgument : "code" "if Slot = 1$(13_10){$(13_10)	global.PlayerMode = 1$(13_10)}$(13_10)$(13_10)if Slot = 0$(13_10){$(13_10)	global.PlayerMode = 2$(13_10)}$(13_10)$(13_10)room_goto(r_CharacterSelect)"
if Slot = 1
{
	global.PlayerMode = 1
}

if Slot = 0
{
	global.PlayerMode = 2
}

room_goto(r_CharacterSelect)