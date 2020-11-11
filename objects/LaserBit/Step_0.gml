/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 33661CA0
/// @DnDArgument : "code" "if y > BriseMarc.y + 200$(13_10){$(13_10)	if instance_number(Smoke) < 3$(13_10)	{$(13_10)	instance_create_depth(x+30*BriseMarc.image_xscale,y-20,-y,Smoke)$(13_10)	}$(13_10)$(13_10)	instance_destroy()$(13_10)}$(13_10)depth = -y-250$(13_10)$(13_10)if image_alpha > 0.3$(13_10){$(13_10)image_alpha -= 0.1$(13_10)}"
if y > BriseMarc.y + 200
{
	if instance_number(Smoke) < 3
	{
	instance_create_depth(x+30*BriseMarc.image_xscale,y-20,-y,Smoke)
	}

	instance_destroy()
}
depth = -y-250

if image_alpha > 0.3
{
image_alpha -= 0.1
}