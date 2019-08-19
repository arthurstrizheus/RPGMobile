//Centering text in text box
draw_set_halign(fa_center);
draw_set_valign(fa_center);

//Setting our Fount
draw_set_font(font0);


if(object_newCharachterBox_Clicked){
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
	draw_text_transformed_color(O_newCharachrerBox.x, O_newCharachrerBox.y + 120, O_newCharachrerBox.player_Name + "|", .8, .8, 0, c_white, c_yellow, c_white, c_white, 1);
}else{
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
	draw_text_transformed_color(O_newCharachrerBox.x, O_newCharachrerBox.y + 120, O_newCharachrerBox.player_Name, .8, .8, 0, c_white, c_yellow, c_white, c_white, 1);
}
