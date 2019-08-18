if(sprite_Follow){
	x = mouse_x;
	y = mouse_y;
}
//Is mouse pressed
if(mouse_check_button_pressed(mb_left)){
	sprite_Follow = false;
	object_Clicked = instance_place(x,y,all);
	//Check if instance clicked is something that needs red curser  to be shown ex.(NPC, Button, ore)
	if(variable_instance_exists(object_Clicked, "is_button")){
		if(object_Clicked.is_button == true){
			//Chaning sprite to red
			sprite_index = S_mMRed;	
		}
	}else{
			sprite_index = S_mMYellow;
	}
}
if(mouse_check_button_released(mb_left)){
	sprite_Follow = true;
	//Code does not reach the top until run though so we need to set it now
	x = mouse_x;
	y = mouse_y;
	//Check if finger is still over instance when released
	if(!place_meeting(x, y, object_Clicked)){
		sprite_index = S_mMYellow;
	}
	alarm[0] = 5;
}

//If the image has reached its full play length stop playing and make disapear
if(image_index == 14){
	sprite_Follow = true;
	visible = false;
	image_speed = 0;
	image_index = 1;
}