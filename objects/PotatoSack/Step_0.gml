/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 75811A20
/// @DnDArgument : "code" "image_angle -= (4 * image_xscale)$(13_10)depth = -y$(13_10)$(13_10)if  y > Draffeurd.targetImage.y+150$(13_10){$(13_10)for (i = 0; i<=40; i+=1)$(13_10){$(13_10)	potato = instance_create_depth(x,y,0,Potato)$(13_10)	potato.direction = random_range(60,120)$(13_10)	potato.speed = random_range(20,24)$(13_10)	potato.gravity = 0.5$(13_10)	size = random_range(1.0, 2.0)$(13_10)	potato.image_xscale = size$(13_10)	potato.image_yscale = size$(13_10)	potato.alarm[0] = random_range(80,90) //Definitivly redo that part$(13_10)}$(13_10)$(13_10)instance_destroy()$(13_10)}"
image_angle -= (4 * image_xscale)
depth = -y

if  y > Draffeurd.targetImage.y+150
{
for (i = 0; i<=40; i+=1)
{
	potato = instance_create_depth(x,y,0,Potato)
	potato.direction = random_range(60,120)
	potato.speed = random_range(20,24)
	potato.gravity = 0.5
	size = random_range(1.0, 2.0)
	potato.image_xscale = size
	potato.image_yscale = size
	potato.alarm[0] = random_range(80,90) //Definitivly redo that part
}

instance_destroy()
}