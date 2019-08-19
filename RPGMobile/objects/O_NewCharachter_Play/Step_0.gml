//Set x and y cords, y cord 224 pixels uner O_newCharacherBox
if(instance_exists(O_newCharachrerBox)){
	x =  room_width / 2;
	y = O_newCharachrerBox.y - 224;
}

//Handeling button presses
if(place_meeting(x,y,O_mM) && mouse_check_button_released(mb_left)){
	player_Name = O_newCharachrerBox.nameCopy;
	alarm[0] = 5;
}
if(place_meeting(x,y,O_mM) && mouse_check_button(mb_left)){
	image_index = 1;
}else{
	image_index = 0;
}
