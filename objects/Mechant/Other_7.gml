/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 35C9BF10
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "s_AspergeSmallDies"
if(sprite_index == s_AspergeSmallDies)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 79BB322F
	/// @DnDParent : 35C9BF10
	/// @DnDArgument : "var" "healths"
	/// @DnDArgument : "op" "3"
	if(healths <= 0)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 0400EA56
		/// @DnDParent : 79BB322F
		speed = 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 5EA20FAA
		/// @DnDParent : 79BB322F
		/// @DnDArgument : "speed" "0"
		image_speed = 0;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 3F570CF2
		/// @DnDParent : 79BB322F
		/// @DnDArgument : "imageind" "20"
		/// @DnDArgument : "spriteind" "s_AspergeSmallDies"
		/// @DnDSaveInfo : "spriteind" "s_AspergeSmallDies"
		sprite_index = s_AspergeSmallDies;
		image_index = 20;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 281AFFC8
	/// @DnDParent : 35C9BF10
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 21199A8C
		/// @DnDParent : 281AFFC8
		/// @DnDArgument : "spriteind" "s_AspergeSmallRun"
		/// @DnDSaveInfo : "spriteind" "s_AspergeSmallRun"
		sprite_index = s_AspergeSmallRun;
		image_index = 0;
	}
}