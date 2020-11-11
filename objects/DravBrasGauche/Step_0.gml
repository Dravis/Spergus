/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7EA1C033
/// @DnDArgument : "code" "x = Dravis.x + 43*Dravis.image_xscale$(13_10)y = Dravis.y - 122$(13_10)depth = Dravis.depth+100$(13_10)image_xscale = Dravis.image_xscale$(13_10)image_alpha = Dravis.image_alpha$(13_10)if Dravis.brasstance = "normal" $(13_10){$(13_10)	image_index = Dravis.image_index$(13_10)}$(13_10)speed = Dravis.speed$(13_10)if Dravis.stance != "skate"$(13_10){instance_destroy()}$(13_10)$(13_10)if Dravis.brasstance = "normal"$(13_10){$(13_10)if Dravis.sprite_index == s_DravRideKick$(13_10)	{$(13_10)	sprite_index = s_BrasGaucheRide$(13_10)	}$(13_10)	$(13_10)if Dravis.sprite_index == s_DravIdleRide$(13_10)	{$(13_10)	sprite_index = s_BrasGaucheIdle$(13_10)	}$(13_10)}$(13_10)$(13_10)if Dravis.brasstance = "attack"$(13_10){	$(13_10)	if sprite_index != s_BrasGaucheAttack$(13_10)	{$(13_10)	sprite_index = s_BrasGaucheAttack$(13_10)	}$(13_10)}$(13_10)$(13_10)if image_index > image_number -1$(13_10){$(13_10)if sprite_index = s_BrasGaucheAttack$(13_10){$(13_10)if keyboard_check(Dravis.basicbtn) = false$(13_10){$(13_10)Dravis.brasstance = "normal"$(13_10)}$(13_10)image_index = 0$(13_10)instance_create_depth(x+50*Dravis.image_xscale, y-50, -y, DravBomb)$(13_10)}$(13_10)$(13_10)}"
x = Dravis.x + 43*Dravis.image_xscale
y = Dravis.y - 122
depth = Dravis.depth+100
image_xscale = Dravis.image_xscale
image_alpha = Dravis.image_alpha
if Dravis.brasstance = "normal" 
{
	image_index = Dravis.image_index
}
speed = Dravis.speed
if Dravis.stance != "skate"
{instance_destroy()}

if Dravis.brasstance = "normal"
{
if Dravis.sprite_index == s_DravRideKick
	{
	sprite_index = s_BrasGaucheRide
	}
	
if Dravis.sprite_index == s_DravIdleRide
	{
	sprite_index = s_BrasGaucheIdle
	}
}

if Dravis.brasstance = "attack"
{	
	if sprite_index != s_BrasGaucheAttack
	{
	sprite_index = s_BrasGaucheAttack
	}
}

if image_index > image_number -1
{
if sprite_index = s_BrasGaucheAttack
{
if keyboard_check(Dravis.basicbtn) = false
{
Dravis.brasstance = "normal"
}
image_index = 0
instance_create_depth(x+50*Dravis.image_xscale, y-50, -y, DravBomb)
}

}