//Handeling button presses
if(place_meeting(x,y,O_mM) && mouse_check_button_released(mb_left)){
	alarm[0] = 5;
}
if(place_meeting(x,y,O_mM) && mouse_check_button(mb_left)){
	image_index = 1;
}else{
	image_index = 0;
}