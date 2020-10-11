/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2AEC394C
/// @DnDArgument : "code" "if player1 != ""$(13_10){$(13_10)	draw_sprite_ext(player1Icon,0,45,45,0.5,0.5,0,c_white,1)$(13_10)	draw_healthbar(156, 100, 368, 140 ,player1.hp / player1.maxHp * 100, c_black, c_green, c_green, 0, true,false)$(13_10)	draw_sprite(s_Healthbar,0,30,30)$(13_10)}"
if player1 != ""
{
	draw_sprite_ext(player1Icon,0,45,45,0.5,0.5,0,c_white,1)
	draw_healthbar(156, 100, 368, 140 ,player1.hp / player1.maxHp * 100, c_black, c_green, c_green, 0, true,false)
	draw_sprite(s_Healthbar,0,30,30)
}