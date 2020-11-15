/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6D7C14C5
/// @DnDArgument : "code" "for (i = 0; i < 3; i+=1)$(13_10){$(13_10)	for (n = 0; n < 4; n+=1)$(13_10)	{$(13_10)$(13_10)		draw_sprite(s_SelectFrame, 0, 560 + (i * 245), 95 + (n * 245 ))$(13_10)	$(13_10)			}$(13_10)}$(13_10)$(13_10)draw_sprite(s_FrameDraff, 0, 560, 95)$(13_10)draw_sprite(s_FrameDrav, 0, 805, 95)$(13_10)draw_sprite(s_FrameMart, 0, 1050, 95)$(13_10)draw_sprite(s_FramePM, 0, 560, 340)$(13_10)draw_sprite(s_FrameDoss, 0, 805, 340)$(13_10)draw_sprite(s_FrameDestro, 0, 1050, 340)$(13_10)draw_sprite(s_FrameBlik, 0, 560, 585)$(13_10)draw_sprite(s_FrameFoin, 0, 805, 585)$(13_10)draw_sprite(s_FrameFrek, 0, 1050, 585)$(13_10)draw_sprite(s_MayorFrame, 0, 560, 830)$(13_10)draw_sprite(s_StigFrame, 0, 805, 830)$(13_10)draw_sprite(s_LeMuletFrame, 0, 1050, 830)$(13_10)draw_sprite(s_SelectCharacterText, 0, 455, -30)$(13_10)$(13_10)if (SelectMode = 1)$(13_10){$(13_10)draw_sprite(s_SelectFrameHighlight, 0, xpos, ypos)$(13_10)}$(13_10)if (SelectMode =2)$(13_10){$(13_10)draw_sprite(s_SelectFrameHighlight2, 0, xpos, ypos)$(13_10)}"
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
draw_sprite(s_FramePM, 0, 560, 340)
draw_sprite(s_FrameDoss, 0, 805, 340)
draw_sprite(s_FrameDestro, 0, 1050, 340)
draw_sprite(s_FrameBlik, 0, 560, 585)
draw_sprite(s_FrameFoin, 0, 805, 585)
draw_sprite(s_FrameFrek, 0, 1050, 585)
draw_sprite(s_MayorFrame, 0, 560, 830)
draw_sprite(s_StigFrame, 0, 805, 830)
draw_sprite(s_LeMuletFrame, 0, 1050, 830)
draw_sprite(s_SelectCharacterText, 0, 455, -30)

if (SelectMode = 1)
{
draw_sprite(s_SelectFrameHighlight, 0, xpos, ypos)
}
if (SelectMode =2)
{
draw_sprite(s_SelectFrameHighlight2, 0, xpos, ypos)
}