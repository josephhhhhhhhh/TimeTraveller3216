/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1B200F24
/// @DnDArgument : "var" "place_meeting(x, y, obj_timetraveller)"
/// @DnDArgument : "value" "true"
if(place_meeting(x, y, obj_timetraveller) == true)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 6E472596
	/// @DnDParent : 1B200F24
	/// @DnDArgument : "key" "ord("E")"
	/// @DnDArgument : "not" "1"
	var l6E472596_0;
	l6E472596_0 = keyboard_check(ord("E"));
	if (!l6E472596_0)
	{
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 017B23DB
		/// @DnDParent : 6E472596
		/// @DnDArgument : "key" "vk_left"
		var l017B23DB_0;
		l017B23DB_0 = keyboard_check(vk_left);
		if (l017B23DB_0)
		{
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 43104BF1
			/// @DnDParent : 017B23DB
			/// @DnDArgument : "x" "-4"
			/// @DnDArgument : "x_relative" "1"
			x += -4;
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 494F3815
			/// @DnDParent : 017B23DB
			/// @DnDArgument : "expr" "position_meeting(x-sprite_width/2,y, instance_position(x-sprite_width/2,y,obj_walls) )"
			if(position_meeting(x-sprite_width/2,y, instance_position(x-sprite_width/2,y,obj_walls) ))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 489EE903
				/// @DnDParent : 494F3815
				/// @DnDArgument : "expr" "obj_timetraveller.xprevious"
				/// @DnDArgument : "var" "obj_timetraveller.x"
				obj_timetraveller.x = obj_timetraveller.xprevious;
			}
		}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 1820EECB
		/// @DnDParent : 6E472596
		/// @DnDArgument : "key" "vk_down"
		var l1820EECB_0;
		l1820EECB_0 = keyboard_check(vk_down);
		if (l1820EECB_0)
		{
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 59BEE833
			/// @DnDParent : 1820EECB
			/// @DnDArgument : "expr" "position_meeting(x,y+sprite_width/2, instance_position(x,y+sprite_width/2,obj_walls) )"
			if(position_meeting(x,y+sprite_width/2, instance_position(x,y+sprite_width/2,obj_walls) ))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0439A16F
				/// @DnDParent : 59BEE833
				/// @DnDArgument : "expr" "obj_timetraveller.yprevious"
				/// @DnDArgument : "var" "obj_timetraveller.y"
				obj_timetraveller.y = obj_timetraveller.yprevious;
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 0D01A03D
			/// @DnDParent : 1820EECB
			else
			{
				/// @DnDAction : YoYo Games.Movement.Jump_To_Point
				/// @DnDVersion : 1
				/// @DnDHash : 69B0C665
				/// @DnDParent : 0D01A03D
				/// @DnDArgument : "y" "4"
				/// @DnDArgument : "y_relative" "1"
				
				y += 4;
			}
		}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 11820538
		/// @DnDParent : 6E472596
		/// @DnDArgument : "key" "vk_up"
		var l11820538_0;
		l11820538_0 = keyboard_check(vk_up);
		if (l11820538_0)
		{
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 01AAFF69
			/// @DnDParent : 11820538
			/// @DnDArgument : "y" "-4"
			/// @DnDArgument : "y_relative" "1"
			
			y += -4;
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 7B2E9C81
			/// @DnDParent : 11820538
			/// @DnDArgument : "expr" "position_meeting(x,y-sprite_width/2, instance_position(x,y-sprite_width/2,obj_walls) )"
			if(position_meeting(x,y-sprite_width/2, instance_position(x,y-sprite_width/2,obj_walls) ))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 48FFFD4F
				/// @DnDParent : 7B2E9C81
				/// @DnDArgument : "expr" "obj_timetraveller.yprevious"
				/// @DnDArgument : "var" "obj_timetraveller.y"
				obj_timetraveller.y = obj_timetraveller.yprevious;
			}
		}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 7BD64A36
		/// @DnDParent : 6E472596
		/// @DnDArgument : "key" "vk_right"
		var l7BD64A36_0;
		l7BD64A36_0 = keyboard_check(vk_right);
		if (l7BD64A36_0)
		{
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 2C3DEED1
			/// @DnDParent : 7BD64A36
			/// @DnDArgument : "expr" "position_meeting(x+sprite_width/2,y, instance_position(x+sprite_width/2,y,obj_walls) )"
			if(position_meeting(x+sprite_width/2,y, instance_position(x+sprite_width/2,y,obj_walls) ))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5879D72A
				/// @DnDParent : 2C3DEED1
				/// @DnDArgument : "expr" "obj_timetraveller.xprevious"
				/// @DnDArgument : "var" "obj_timetraveller.x"
				obj_timetraveller.x = obj_timetraveller.xprevious;
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 0D080DE6
			/// @DnDParent : 7BD64A36
			else
			{
				/// @DnDAction : YoYo Games.Movement.Jump_To_Point
				/// @DnDVersion : 1
				/// @DnDHash : 636A8FAC
				/// @DnDParent : 0D080DE6
				/// @DnDArgument : "x" "4"
				/// @DnDArgument : "x_relative" "1"
				x += 4;
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 053118B0
	/// @DnDParent : 1B200F24
	/// @DnDArgument : "expr" "4"
	/// @DnDArgument : "var" "obj_timetraveller.walkingspeed"
	obj_timetraveller.walkingspeed = 4;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7C5739D8
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6E5C585A
	/// @DnDParent : 7C5739D8
	/// @DnDArgument : "expr" "5"
	/// @DnDArgument : "var" "obj_timetraveller.walkingspeed"
	obj_timetraveller.walkingspeed = 5;
}