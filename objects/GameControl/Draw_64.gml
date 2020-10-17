/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2AEC394C
/// @DnDArgument : "code" "if player1 != ""$(13_10){$(13_10)	draw_sprite_ext(player1Icon,0,45,45,0.5,0.5,0,c_white,1)$(13_10)	draw_healthbar(156, 100, 368, 140 ,player1.hp / player1.maxHp * 100, c_black, c_green, c_green, 0, true,false)$(13_10)	draw_sprite(s_Healthbar,0,30,30)$(13_10)}$(13_10)$(13_10)if player2 != ""$(13_10){$(13_10)	draw_sprite_ext(player2Icon,0,215+1666,45,-0.5,0.5,0,c_white,1)$(13_10)	draw_healthbar(156+1400, 100, 368+1400, 140 ,player2.hp / player2.maxHp * 100, c_black, c_green, c_green, 1, true,false)$(13_10)	draw_sprite_ext(s_Healthbar,0,1896,30,-1,1,0,c_white,1)$(13_10)}"
if player1 != ""
{
	draw_sprite_ext(player1Icon,0,45,45,0.5,0.5,0,c_white,1)
	draw_healthbar(156, 100, 368, 140 ,player1.hp / player1.maxHp * 100, c_black, c_green, c_green, 0, true,false)
	draw_sprite(s_Healthbar,0,30,30)
}

if player2 != ""
{
	draw_sprite_ext(player2Icon,0,215+1666,45,-0.5,0.5,0,c_white,1)
	draw_healthbar(156+1400, 100, 368+1400, 140 ,player2.hp / player2.maxHp * 100, c_black, c_green, c_green, 1, true,false)
	draw_sprite_ext(s_Healthbar,0,1896,30,-1,1,0,c_white,1)
}