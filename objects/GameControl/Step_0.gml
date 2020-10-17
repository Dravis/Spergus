/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0DA71433
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "r_Test"
if(room == r_Test)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 041FAD42
	/// @DnDParent : 0DA71433
	/// @DnDArgument : "code" "var _cam_x = camera_get_view_x(view_camera[0]) ;$(13_10)layer_x("Backgrounds_1", _cam_x * 0.25); // Change the background layer name to whatever you use in the room editor$(13_10)layer_x("Background", _cam_x * 0);   // Change the 0.25 and 0.5 values to change the speed of the effect"
	var _cam_x = camera_get_view_x(view_camera[0]) ;
	layer_x("Backgrounds_1", _cam_x * 0.25); // Change the background layer name to whatever you use in the room editor
	layer_x("Background", _cam_x * 0);   // Change the 0.25 and 0.5 values to change the speed of the effect
}