/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4A6CC079
/// @DnDArgument : "code" "depth= 1000000$(13_10)player1 = ""$(13_10)player1Icon = ""$(13_10)player2 = ""$(13_10)player2Icon = ""$(13_10)global.CanSmoke = true$(13_10)//Character 1 create$(13_10)if global.Character1 == 1$(13_10)	{ $(13_10)		player1 = instance_create_depth(992, 200, 0, Draffeurd)$(13_10)		player1Icon = s_FrameDraff$(13_10)	}$(13_10)else if global.Character1 == 2 $(13_10)	{  $(13_10)		player1 = instance_create_depth(992, 736, 0, Dravis) $(13_10)		player1Icon = s_FrameDrav$(13_10)	}$(13_10)else if global.Character1 == 3 $(13_10)	{ $(13_10)		player1 = instance_create_depth(992, 736, 0, Marty) $(13_10)		player1Icon = s_FrameMart$(13_10)	}$(13_10)	$(13_10)	else if global.Character1 == 4$(13_10)	{ $(13_10)		player1 = instance_create_depth(992, 736, 0, BriseMarc) $(13_10)		player1Icon = s_FramePM$(13_10)	}$(13_10)	$(13_10)	else if global.Character1 == 5$(13_10)	{ $(13_10)		player1 = instance_create_depth(992, 736, 0, Dossailto) $(13_10)		player1Icon = s_FrameDoss$(13_10)	}$(13_10)	$(13_10)		else if global.Character1 == 6$(13_10)	{ $(13_10)		player1 = instance_create_depth(992, 736, 0, Destro) $(13_10)		player1Icon = s_FrameDestro$(13_10)	}$(13_10)	$(13_10)			else if global.Character1 == 7$(13_10)	{ $(13_10)		player1 = instance_create_depth(992, 736, 0, Blik) $(13_10)		player1Icon = s_FrameBlik$(13_10)	$(13_10)	}$(13_10)	$(13_10)				else if global.Character1 == 8$(13_10)	{ $(13_10)		player1 = instance_create_depth(992, 736, 0, Foin) $(13_10)		player1Icon = s_FrameFoin$(13_10)	$(13_10)	}$(13_10)					else if global.Character1 == 9$(13_10)	{ $(13_10)		player1 = instance_create_depth(992, 736, 0, Frek) $(13_10)		player1Icon = s_FrameFrek$(13_10)	$(13_10)	}$(13_10)						else if global.Character1 == 10$(13_10)	{ $(13_10)		player1 = instance_create_depth(992, 736, 0, Mayor) $(13_10)		player1Icon = s_MayorFrame$(13_10)	$(13_10)	}$(13_10)							else if global.Character1 == 11$(13_10)	{ $(13_10)		player1 = instance_create_depth(992, 736, 0, Stiglitz) $(13_10)		player1Icon = s_StigFrame$(13_10)	$(13_10)	}$(13_10)								else if global.Character1 == 12$(13_10)	{ $(13_10)		player1 = instance_create_depth(992, 736, 0, LeMulet) $(13_10)		player1Icon = s_LeMuletFrame$(13_10)	$(13_10)	}$(13_10)	$(13_10)else$(13_10)	{ player1 = instance_create_depth(992, 736, 0, Player1_Parent) }$(13_10)$(13_10)//Create character 2$(13_10)$(13_10)if (global.PlayerMode = 2)$(13_10)$(13_10){$(13_10)$(13_10)if global.Character2 == 1$(13_10)	{ $(13_10)		player2 = instance_create_depth(992, 200, 0, Draffeurd)$(13_10)		player2Icon = s_FrameDraff$(13_10)	}$(13_10)else if global.Character2 == 2 $(13_10)	{  $(13_10)		player2 = instance_create_depth(992, 736, 0, Dravis) $(13_10)		player2Icon = s_FrameDrav$(13_10)	}$(13_10)else if global.Character2 == 3 $(13_10)	{ $(13_10)		player2 = instance_create_depth(992, 736, 0, Marty) $(13_10)		player2Icon = s_FrameMart$(13_10)	}$(13_10)	$(13_10)	else if global.Character2 == 4$(13_10)	{ $(13_10)		player2 = instance_create_depth(992, 736, 0, BriseMarc) $(13_10)		player2Icon = s_FramePM$(13_10)	}$(13_10)	$(13_10)	else if global.Character2 == 5$(13_10)	{ $(13_10)		player2 = instance_create_depth(992, 736, 0, Dossailto) $(13_10)		player2Icon = s_FrameDoss$(13_10)	}$(13_10)	$(13_10)	else if global.Character2 == 6$(13_10)	{ $(13_10)		player1 = instance_create_depth(992, 736, 0, Destro) $(13_10)		player1Icon = s_FrameDestro$(13_10)	}$(13_10)	$(13_10)		else if global.Character2 == 7$(13_10)	{ $(13_10)		player1 = instance_create_depth(992, 736, 0, Blik) $(13_10)		player1Icon = s_FrameBlik$(13_10)	}$(13_10)	$(13_10)			else if global.Character2 == 8$(13_10)	{ $(13_10)		player1 = instance_create_depth(992, 736, 0, Foin) $(13_10)		player1Icon = s_FrameFoin$(13_10)	}$(13_10)						else if global.Character2 == 9$(13_10)	{ $(13_10)		player1 = instance_create_depth(992, 736, 0, Frek) $(13_10)		player1Icon = s_FrameFrek$(13_10)	$(13_10)	}$(13_10)			else if global.Character2 == 10$(13_10)	{ $(13_10)		player1 = instance_create_depth(992, 736, 0, Mayor) $(13_10)		player1Icon = s_MayorFrame$(13_10)	$(13_10)	}$(13_10)			else if global.Character2 == 11$(13_10)	{ $(13_10)		player1 = instance_create_depth(992, 736, 0, Stiglitz) $(13_10)		player1Icon = s_StigFrame$(13_10)	$(13_10)	}$(13_10)									else if global.Character2 == 12$(13_10)	{ $(13_10)		player1 = instance_create_depth(992, 736, 0, LeMulet) $(13_10)		player1Icon = s_LeMuletFrame$(13_10)	$(13_10)	}$(13_10)else$(13_10)	{ player2 = instance_create_depth(992, 736, 0, Player2_Parent) }$(13_10)	$(13_10)	}$(13_10)	$(13_10)/*	player1.parent = Player1_Parent$(13_10)	if (global.PlayerMode = 2)$(13_10)$(13_10)	{$(13_10)	player2.parent = Player2_Parent$(13_10)	}$(13_10)	*/"
depth= 1000000
player1 = ""
player1Icon = ""
player2 = ""
player2Icon = ""
global.CanSmoke = true
//Character 1 create
if global.Character1 == 1
	{ 
		player1 = instance_create_depth(992, 200, 0, Draffeurd)
		player1Icon = s_FrameDraff
	}
else if global.Character1 == 2 
	{  
		player1 = instance_create_depth(992, 736, 0, Dravis) 
		player1Icon = s_FrameDrav
	}
else if global.Character1 == 3 
	{ 
		player1 = instance_create_depth(992, 736, 0, Marty) 
		player1Icon = s_FrameMart
	}
	
	else if global.Character1 == 4
	{ 
		player1 = instance_create_depth(992, 736, 0, BriseMarc) 
		player1Icon = s_FramePM
	}
	
	else if global.Character1 == 5
	{ 
		player1 = instance_create_depth(992, 736, 0, Dossailto) 
		player1Icon = s_FrameDoss
	}
	
		else if global.Character1 == 6
	{ 
		player1 = instance_create_depth(992, 736, 0, Destro) 
		player1Icon = s_FrameDestro
	}
	
			else if global.Character1 == 7
	{ 
		player1 = instance_create_depth(992, 736, 0, Blik) 
		player1Icon = s_FrameBlik
	
	}
	
				else if global.Character1 == 8
	{ 
		player1 = instance_create_depth(992, 736, 0, Foin) 
		player1Icon = s_FrameFoin
	
	}
					else if global.Character1 == 9
	{ 
		player1 = instance_create_depth(992, 736, 0, Frek) 
		player1Icon = s_FrameFrek
	
	}
						else if global.Character1 == 10
	{ 
		player1 = instance_create_depth(992, 736, 0, Mayor) 
		player1Icon = s_MayorFrame
	
	}
							else if global.Character1 == 11
	{ 
		player1 = instance_create_depth(992, 736, 0, Stiglitz) 
		player1Icon = s_StigFrame
	
	}
								else if global.Character1 == 12
	{ 
		player1 = instance_create_depth(992, 736, 0, LeMulet) 
		player1Icon = s_LeMuletFrame
	
	}
	
else
	{ player1 = instance_create_depth(992, 736, 0, Player1_Parent) }

//Create character 2

if (global.PlayerMode = 2)

{

if global.Character2 == 1
	{ 
		player2 = instance_create_depth(992, 200, 0, Draffeurd)
		player2Icon = s_FrameDraff
	}
else if global.Character2 == 2 
	{  
		player2 = instance_create_depth(992, 736, 0, Dravis) 
		player2Icon = s_FrameDrav
	}
else if global.Character2 == 3 
	{ 
		player2 = instance_create_depth(992, 736, 0, Marty) 
		player2Icon = s_FrameMart
	}
	
	else if global.Character2 == 4
	{ 
		player2 = instance_create_depth(992, 736, 0, BriseMarc) 
		player2Icon = s_FramePM
	}
	
	else if global.Character2 == 5
	{ 
		player2 = instance_create_depth(992, 736, 0, Dossailto) 
		player2Icon = s_FrameDoss
	}
	
	else if global.Character2 == 6
	{ 
		player1 = instance_create_depth(992, 736, 0, Destro) 
		player1Icon = s_FrameDestro
	}
	
		else if global.Character2 == 7
	{ 
		player1 = instance_create_depth(992, 736, 0, Blik) 
		player1Icon = s_FrameBlik
	}
	
			else if global.Character2 == 8
	{ 
		player1 = instance_create_depth(992, 736, 0, Foin) 
		player1Icon = s_FrameFoin
	}
						else if global.Character2 == 9
	{ 
		player1 = instance_create_depth(992, 736, 0, Frek) 
		player1Icon = s_FrameFrek
	
	}
			else if global.Character2 == 10
	{ 
		player1 = instance_create_depth(992, 736, 0, Mayor) 
		player1Icon = s_MayorFrame
	
	}
			else if global.Character2 == 11
	{ 
		player1 = instance_create_depth(992, 736, 0, Stiglitz) 
		player1Icon = s_StigFrame
	
	}
									else if global.Character2 == 12
	{ 
		player1 = instance_create_depth(992, 736, 0, LeMulet) 
		player1Icon = s_LeMuletFrame
	
	}
else
	{ player2 = instance_create_depth(992, 736, 0, Player2_Parent) }
	
	}
	
/*	player1.parent = Player1_Parent
	if (global.PlayerMode = 2)

	{
	player2.parent = Player2_Parent
	}
	*//**/