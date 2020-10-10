/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 20A21300
/// @DnDArgument : "expr" "-y"
/// @DnDArgument : "var" "self.depth"
self.depth = -y;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3F18BDCE
/// @DnDArgument : "expr" "keyboard_check(vk_space)"
/// @DnDArgument : "not" "1"
if(!(keyboard_check(vk_space)))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0F5C6497
	/// @DnDParent : 3F18BDCE
	/// @DnDArgument : "var" "Shooting"
	Shooting = 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 41145AFD
/// @DnDArgument : "var" "Shooting"
/// @DnDArgument : "value" "1"
if(Shooting == 1)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6D55396A
	/// @DnDParent : 41145AFD
	/// @DnDArgument : "var" "image_index"
	if(image_index == 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 73034774
		/// @DnDParent : 6D55396A
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "CanShoot"
		CanShoot = 1;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1C28D940
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "750"
if(y > 750)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 14FD4A80
	/// @DnDParent : 1C28D940
	/// @DnDArgument : "expr" "750"
	/// @DnDArgument : "var" "y"
	y = 750;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 09FF623A
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "340"
if(y < 340)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 24003C5D
	/// @DnDParent : 09FF623A
	/// @DnDArgument : "expr" "340"
	/// @DnDArgument : "var" "y"
	y = 340;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 670E7873
/// @DnDArgument : "var" "image_xscale"
/// @DnDArgument : "value" "-1"
if(image_xscale == -1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 28969194
	/// @DnDParent : 670E7873
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "var" "lastdir"
	lastdir = -1;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 09C10B5E
/// @DnDArgument : "var" "image_xscale"
/// @DnDArgument : "value" "1"
if(image_xscale == 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4AB38B84
	/// @DnDParent : 09C10B5E
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "lastdir"
	lastdir = 1;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 79EE7F43
/// @DnDArgument : "var" "speed"
if(speed == 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 077744A8
	/// @DnDParent : 79EE7F43
	/// @DnDArgument : "var" "Shooting"
	if(Shooting == 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 5227607C
		/// @DnDParent : 077744A8
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "s_MartIdle"
		/// @DnDSaveInfo : "spriteind" "s_MartIdle"
		sprite_index = s_MartIdle;
		image_index += 0;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 259F1A60
/// @DnDArgument : "var" "speed"
/// @DnDArgument : "not" "1"
if(!(speed == 0))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2C8B6F05
	/// @DnDParent : 259F1A60
	/// @DnDArgument : "var" "Shooting"
	/// @DnDArgument : "value" "1"
	if(Shooting == 1)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 4B8BF6B8
		/// @DnDParent : 2C8B6F05
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "s_MartWalkShooty"
		/// @DnDSaveInfo : "spriteind" "s_MartWalkShooty"
		sprite_index = s_MartWalkShooty;
		image_index += 0;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 287FAFA6
/// @DnDArgument : "var" "speed"
if(speed == 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 00E8879C
	/// @DnDParent : 287FAFA6
	/// @DnDArgument : "var" "Shooting"
	/// @DnDArgument : "value" "1"
	if(Shooting == 1)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 07B229DB
		/// @DnDParent : 00E8879C
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "s_MartyShootIdle"
		/// @DnDSaveInfo : "spriteind" "s_MartyShootIdle"
		sprite_index = s_MartyShootIdle;
		image_index += 0;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 60ABFD48
/// @DnDArgument : "var" "speed"
/// @DnDArgument : "not" "1"
if(!(speed == 0))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0EBEADB3
	/// @DnDParent : 60ABFD48
	/// @DnDArgument : "var" "Shooting"
	if(Shooting == 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 59B66EC9
		/// @DnDParent : 0EBEADB3
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "s_MartWalkShoot"
		/// @DnDSaveInfo : "spriteind" "s_MartWalkShoot"
		sprite_index = s_MartWalkShoot;
		image_index += 0;
	}
}