/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3E51AB9A
/// @DnDArgument : "code" "image_angle -= (4 * image_xscale)$(13_10)depth = -y$(13_10)hspeed -=0.3$(13_10)$(13_10)if  y > Player1_Parent.y+150 or hspeed = 0$(13_10){$(13_10)for (i = 0; i<=40; i+=1)$(13_10){$(13_10)	Botts = instance_create_depth(x,y,0,BottlePiece)$(13_10)	Botts.direction = random_range(60,120)$(13_10)	Botts.speed = random_range(5,11)$(13_10)	Botts.gravity = 0.6$(13_10)	size = random_range(0.2, 1.2)$(13_10)	Botts.image_xscale = size$(13_10)	Botts.image_yscale = size$(13_10)	Botts.alarm[0] = random_range(20,30) //Definitivly redo that par$(13_10)$(13_10)instance_destroy()$(13_10)}$(13_10)}"
image_angle -= (4 * image_xscale)
depth = -y
hspeed -=0.3

if  y > Player1_Parent.y+150 or hspeed = 0
{
for (i = 0; i<=40; i+=1)
{
	Botts = instance_create_depth(x,y,0,BottlePiece)
	Botts.direction = random_range(60,120)
	Botts.speed = random_range(5,11)
	Botts.gravity = 0.6
	size = random_range(0.2, 1.2)
	Botts.image_xscale = size
	Botts.image_yscale = size
	Botts.alarm[0] = random_range(20,30) //Definitivly redo that par

instance_destroy()
}
}