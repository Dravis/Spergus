/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 47AA4E42
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "Player1_Parent.y-100"
if(y > Player1_Parent.y-100)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 117E14B5
	/// @DnDParent : 47AA4E42
	/// @DnDArgument : "var" "y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "Player1_Parent.y+100"
	if(y < Player1_Parent.y+100)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 12875F45
		/// @DnDParent : 117E14B5
		/// @DnDArgument : "var" "healths"
		/// @DnDArgument : "op" "2"
		if(healths > 0)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3B6433BC
			/// @DnDParent : 12875F45
			/// @DnDArgument : "var" "Flashy"
			/// @DnDArgument : "not" "1"
			/// @DnDArgument : "value" "1"
			if(!(Flashy == 1))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0312DA16
				/// @DnDParent : 3B6433BC
				/// @DnDArgument : "expr" "-34"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "self.healths"
				self.healths += -34;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 1904A9E4
				/// @DnDParent : 3B6433BC
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "var" "Flashy"
				Flashy = 1;
			
				/// @DnDAction : YoYo Games.Instances.Set_Alarm
				/// @DnDVersion : 1
				/// @DnDHash : 1F37458F
				/// @DnDParent : 3B6433BC
				/// @DnDArgument : "steps" "45"
				/// @DnDArgument : "alarm" "1"
				alarm_set(1, 45);
			
				/// @DnDAction : YoYo Games.Instances.Set_Sprite
				/// @DnDVersion : 1
				/// @DnDHash : 7194C560
				/// @DnDParent : 3B6433BC
				/// @DnDArgument : "spriteind" "s_DravDies"
				/// @DnDSaveInfo : "spriteind" "s_DravDies"
				sprite_index = s_DravDies;
				image_index = 0;
			}
		}
	}
}