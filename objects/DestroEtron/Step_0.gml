/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 467FB4DC
/// @DnDArgument : "code" "$(13_10)if y >= -2$(13_10){$(13_10)	image_angle += rotspeed$(13_10)}$(13_10)$(13_10)$(13_10)if  y > startpoint + 200$(13_10){$(13_10)for (i = 0; i<=15; i+=1)$(13_10){$(13_10)	caca = instance_create_depth(x,y,0,BoutDetron)$(13_10)	caca.direction = random_range(60,120)$(13_10)	caca.speed = random_range(5,11)$(13_10)	caca.gravity = 0.6$(13_10)	size = random_range(0.2, 1.2)$(13_10)	caca.image_xscale = size$(13_10)	caca.image_yscale = size$(13_10)	caca.alarm[0] = random_range(20,40) //Definitivly redo that par$(13_10)$(13_10)instance_destroy()$(13_10)}$(13_10)}"

if y >= -2
{
	image_angle += rotspeed
}


if  y > startpoint + 200
{
for (i = 0; i<=15; i+=1)
{
	caca = instance_create_depth(x,y,0,BoutDetron)
	caca.direction = random_range(60,120)
	caca.speed = random_range(5,11)
	caca.gravity = 0.6
	size = random_range(0.2, 1.2)
	caca.image_xscale = size
	caca.image_yscale = size
	caca.alarm[0] = random_range(20,40) //Definitivly redo that par

instance_destroy()
}
}