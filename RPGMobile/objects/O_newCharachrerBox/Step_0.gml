//If player click then remove current text
if(place_meeting(x,y,O_mM) && mouse_check_button(mb_left)){
	if(player_Name == "Please Enter Name"){
		player_Name = "";
	}else{
	keyboard_string = nameCopy;	
	}
	object_Self_Clicked = true;
}
//If player clicks off without typing in name reset text
if(!place_meeting(x,y,O_mM) && mouse_check_button(mb_left)){
	if(player_Name == ""){
		player_Name = "Please Enter Name";
	}
	object_Self_Clicked = false;
}
//If clicked on then get typed string
if(object_Self_Clicked){
	//Prevent name from being any longer than 39 charachters
	if(string_width(keyboard_string) >= O_newCharachrerBox.sprite_width - 125){
		keyboard_string = nameCopy;	
		
	}else{
		player_Name = keyboard_string;
	}
}
nameCopy = player_Name;
