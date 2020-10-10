/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0E8E7539
/// @DnDArgument : "var" "image_xscale"
/// @DnDArgument : "value" "1"
if(image_xscale == 1)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 00F08789
	/// @DnDParent : 0E8E7539
	/// @DnDArgument : "var" "CanShoot"
	/// @DnDArgument : "value" "1"
	if(CanShoot == 1)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1762B282
		/// @DnDParent : 00F08789
		/// @DnDArgument : "var" "CanShoot"
		CanShoot = 0;
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5F26A3AF
		/// @DnDParent : 00F08789
		/// @DnDArgument : "xpos" "sprite_height-1024+475"
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos" "-180"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "HitboxMart"
		/// @DnDSaveInfo : "objectid" "HitboxMart"
		instance_create_layer(x + sprite_height-1024+475, y + -180, "Instances", HitboxMart);
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6FDB95F5
/// @DnDArgument : "var" "image_xscale"
/// @DnDArgument : "value" "-1"
if(image_xscale == -1)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 31FFC659
	/// @DnDParent : 6FDB95F5
	/// @DnDArgument : "var" "CanShoot"
	/// @DnDArgument : "value" "1"
	if(CanShoot == 1)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 27ABCAF8
		/// @DnDParent : 31FFC659
		/// @DnDArgument : "xpos" "sprite_height-1024-475"
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos" "-180"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "HitboxMart"
		/// @DnDSaveInfo : "objectid" "HitboxMart"
		instance_create_layer(x + sprite_height-1024-475, y + -180, "Instances", HitboxMart);
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 2A0F87C9
		/// @DnDApplyTo : {HitboxMart}
		/// @DnDParent : 31FFC659
		/// @DnDArgument : "xscale" "-1"
		with(HitboxMart) {
		image_xscale = -1;
		image_yscale = 1;
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 320888D4
		/// @DnDParent : 31FFC659
		/// @DnDArgument : "var" "CanShoot"
		CanShoot = 0;
	}
}