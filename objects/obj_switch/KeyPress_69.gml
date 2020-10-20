/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 36B6E92B
/// @DnDArgument : "var" "distance_to_object(obj_timetraveller) < 15 "
/// @DnDArgument : "value" "true"
if(distance_to_object(obj_timetraveller) < 15  == true)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 27C469FD
	/// @DnDParent : 36B6E92B
	/// @DnDArgument : "angle" "180"
	/// @DnDArgument : "angle_relative" "1"
	image_angle += 180;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1A013E8A
	/// @DnDParent : 36B6E92B
	/// @DnDArgument : "expr" "!(obj_switch.isTriggered)"
	/// @DnDArgument : "var" "obj_switch.isTriggered"
	obj_switch.isTriggered = !(obj_switch.isTriggered);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6B81457F
	/// @DnDParent : 36B6E92B
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "switchPressed"
	switchPressed = true;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4CDDE484
	/// @DnDParent : 36B6E92B
	/// @DnDArgument : "expr" "++switchCount"
	/// @DnDArgument : "var" "switchCount"
	switchCount = ++switchCount;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 61792A1A
	/// @DnDParent : 36B6E92B
	/// @DnDArgument : "expr" "switchCount > countLimit"
	if(switchCount > countLimit)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 79AD36D9
		/// @DnDParent : 61792A1A
		/// @DnDArgument : "expr" "countLimit"
		/// @DnDArgument : "var" "switchCount"
		switchCount = countLimit;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3DDD5295
		/// @DnDParent : 61792A1A
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "transmittedSwitchCount"
		transmittedSwitchCount = true;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 781B2284
	/// @DnDParent : 36B6E92B
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7A3BE097
		/// @DnDParent : 781B2284
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "transmittedSwitchCount"
		transmittedSwitchCount = false;
	}
}