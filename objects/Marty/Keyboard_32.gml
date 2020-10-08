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
	/// @DnDArgument : "var" "image_index"
	/// @DnDArgument : "value" "1"
	if(image_index == 1)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 33BAF81B
		/// @DnDParent : 00F08789
		/// @DnDArgument : "var" "CanShoot"
		/// @DnDArgument : "value" "1"
		if(CanShoot == 1)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 5F26A3AF
			/// @DnDParent : 33BAF81B
			/// @DnDArgument : "xpos" "sprite_height-1024+400"
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos" "-180"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "HitboxMart"
			/// @DnDSaveInfo : "objectid" "HitboxMart"
			instance_create_layer(x + sprite_height-1024+400, y + -180, "Instances", HitboxMart);
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 19427EFD
			/// @DnDParent : 33BAF81B
			/// @DnDArgument : "soundid" "Shotgun"
			/// @DnDSaveInfo : "soundid" "Shotgun"
			audio_play_sound(Shotgun, 0, 0);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1762B282
			/// @DnDParent : 33BAF81B
			/// @DnDArgument : "var" "CanShoot"
			CanShoot = 0;
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 77F27D54
			/// @DnDParent : 33BAF81B
			/// @DnDArgument : "steps" "100"
			/// @DnDArgument : "alarm" "4"
			alarm_set(4, 100);
		}
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
	/// @DnDArgument : "var" "image_index"
	/// @DnDArgument : "value" "1"
	if(image_index == 1)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7DBB0E47
		/// @DnDParent : 31FFC659
		/// @DnDArgument : "var" "CanShoot"
		/// @DnDArgument : "value" "1"
		if(CanShoot == 1)
		{
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 470B8705
			/// @DnDParent : 7DBB0E47
			/// @DnDArgument : "soundid" "Shotgun"
			/// @DnDSaveInfo : "soundid" "Shotgun"
			audio_play_sound(Shotgun, 0, 0);
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 27ABCAF8
			/// @DnDParent : 7DBB0E47
			/// @DnDArgument : "xpos" "sprite_height-1024-400"
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos" "-180"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "HitboxMart"
			/// @DnDSaveInfo : "objectid" "HitboxMart"
			instance_create_layer(x + sprite_height-1024-400, y + -180, "Instances", HitboxMart);
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 71FC5F82
			/// @DnDParent : 7DBB0E47
			/// @DnDArgument : "steps" "100"
			/// @DnDArgument : "alarm" "4"
			alarm_set(4, 100);
		
			/// @DnDAction : YoYo Games.Instances.Sprite_Scale
			/// @DnDVersion : 1
			/// @DnDHash : 2A0F87C9
			/// @DnDApplyTo : {HitboxMart}
			/// @DnDParent : 7DBB0E47
			/// @DnDArgument : "xscale" "-1"
			with(HitboxMart) {
			image_xscale = -1;
			image_yscale = 1;
			}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 320888D4
			/// @DnDParent : 7DBB0E47
			/// @DnDArgument : "var" "CanShoot"
			CanShoot = 0;
		}
	}
}