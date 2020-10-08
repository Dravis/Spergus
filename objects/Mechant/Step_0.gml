/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4558844A
/// @DnDArgument : "expr" "-y"
/// @DnDArgument : "var" "self.depth"
self.depth = -y;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 291DE111
/// @DnDArgument : "var" "hspeed"
/// @DnDArgument : "op" "2"
if(hspeed > 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5202D5C4
	/// @DnDParent : 291DE111
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "lastdir"
	lastdir = 1;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2FA27415
/// @DnDArgument : "var" "hspeed"
/// @DnDArgument : "op" "1"
if(hspeed < 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 770380F0
	/// @DnDParent : 2FA27415
	/// @DnDArgument : "var" "self.lastdir"
	self.lastdir = 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 273BDE6B
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "s_DravDies"
if(sprite_index == s_DravDies)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 462604C3
	/// @DnDParent : 273BDE6B
	/// @DnDArgument : "var" "image_speed"
	/// @DnDArgument : "not" "1"
	if(!(image_speed == 0))
	{
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 04C26E9D
		/// @DnDParent : 462604C3
		/// @DnDArgument : "x" "Player1_Parent.x"
		/// @DnDArgument : "y" "Player1_Parent.y"
		direction = point_direction(x, y, Player1_Parent.x, Player1_Parent.y);
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 3EFA69A9
		/// @DnDParent : 462604C3
		/// @DnDArgument : "speed" "-10"
		speed = -10;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3821E16D
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "s_DravRuns"
if(sprite_index == s_DravRuns)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 4AA58E8E
	/// @DnDParent : 3821E16D
	/// @DnDArgument : "x" "Player1_Parent.x"
	/// @DnDArgument : "y" "Player1_Parent.y"
	direction = point_direction(x, y, Player1_Parent.x, Player1_Parent.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 7CDDD2D6
	/// @DnDParent : 3821E16D
	/// @DnDArgument : "speed" "3"
	speed = 3;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 77F630B4
/// @DnDArgument : "var" "self.lastdir"
/// @DnDArgument : "value" "1"
if(self.lastdir == 1)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3F00DC5C
	/// @DnDParent : 77F630B4
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "s_DravDies"
	if(!(sprite_index == s_DravDies))
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 1E0FB726
		/// @DnDParent : 3F00DC5C
		image_xscale = 1;
		image_yscale = 1;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7FE2757D
/// @DnDArgument : "var" "self.lastdir"
if(self.lastdir == 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 69163ADC
	/// @DnDParent : 7FE2757D
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "s_DravDies"
	if(!(sprite_index == s_DravDies))
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 1F8E4C1C
		/// @DnDParent : 69163ADC
		/// @DnDArgument : "xscale" "-1"
		image_xscale = -1;
		image_yscale = 1;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 496B3804
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "750"
if(y > 750)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 63949D39
	/// @DnDParent : 496B3804
	/// @DnDArgument : "expr" "750"
	/// @DnDArgument : "var" "y"
	y = 750;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0C4D5165
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "340"
if(y < 340)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 17E7F16F
	/// @DnDParent : 0C4D5165
	/// @DnDArgument : "expr" "340"
	/// @DnDArgument : "var" "y"
	y = 340;
}