/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 3FD5F633
/// @DnDArgument : "spriteind" "s_explosion"
/// @DnDSaveInfo : "spriteind" "s_explosion"
sprite_index = s_explosion;
image_index = 0;

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 625EAEA0
image_angle = 0;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 30924B3D
speed = 0;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 27302D88
/// @DnDApplyTo : other
with(other) instance_destroy();