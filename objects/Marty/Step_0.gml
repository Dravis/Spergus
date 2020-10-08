/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 20A21300
/// @DnDArgument : "expr" "-y"
/// @DnDArgument : "var" "self.depth"
self.depth = -y;

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
		/// @DnDArgument : "imageind" "1"
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "MartIdle"
		/// @DnDSaveInfo : "spriteind" "MartIdle"
		sprite_index = MartIdle;
		image_index += 1;
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
	if(Shooting == 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 4B8BF6B8
		/// @DnDParent : 2C8B6F05
		/// @DnDArgument : "imageind" "1"
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "MartWalkShoot"
		/// @DnDSaveInfo : "spriteind" "MartWalkShoot"
		sprite_index = MartWalkShoot;
		image_index += 1;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 60ABFD48
/// @DnDArgument : "var" "speed"
if(speed == 0)
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
		/// @DnDArgument : "imageind" "1"
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "MartyShootIdle"
		/// @DnDSaveInfo : "spriteind" "MartyShootIdle"
		sprite_index = MartyShootIdle;
		image_index += 1;
	}
}