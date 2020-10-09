/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6D7C14C5
/// @DnDArgument : "code" "for (i = 0; i < 3; i+=1)$(13_10){$(13_10)	for (n = 0; n < 4; n+=1)$(13_10)	{$(13_10)		draw_sprite(s_SelectFrame, 0, 560 + (i * 245), 95 + (n * 245 ))$(13_10)	}$(13_10)}$(13_10)$(13_10)draw_sprite(s_FrameDraff, 0, 560, 95)$(13_10)draw_sprite(s_FrameDrav, 0, 805, 95)$(13_10)draw_sprite(s_FrameMart, 0, 1050, 95)$(13_10)draw_sprite(s_SelectCharacterText, 0, 455, -30)$(13_10)draw_sprite(s_SelectFrameHighlight, 0, xpos, ypos)"
for (i = 0; i < 3; i+=1)
{
	for (n = 0; n < 4; n+=1)
	{
		draw_sprite(s_SelectFrame, 0, 560 + (i * 245), 95 + (n * 245 ))
	}
}

draw_sprite(s_FrameDraff, 0, 560, 95)
draw_sprite(s_FrameDrav, 0, 805, 95)
draw_sprite(s_FrameMart, 0, 1050, 95)
draw_sprite(s_SelectCharacterText, 0, 455, -30)
draw_sprite(s_SelectFrameHighlight, 0, xpos, ypos)