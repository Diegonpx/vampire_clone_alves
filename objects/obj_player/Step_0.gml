/// @description Controla o objeto

h_move = keyboard_check(vk_right) - keyboard_check(vk_left);
v_move = keyboard_check(vk_down) - keyboard_check(vk_up);

if (h_move != 0 or v_move != 0)
{
	if (sprite_index != spr_player_walking)
	{
		sprite_index = spr_player_walking;
		image_index = 0;
	}
	
	if (h_move != 0)
	{
	image_xscale = h_move;
	}
	
	var _dir = point_direction(0,0,h_move,v_move);

	mov_x = lengthdir_x(2,_dir);
	mov_y = lengthdir_y(2,_dir);

	x += mov_x;
	y += mov_y;
}
else
{
	if (sprite_index != spr_player_idle)
	{
		sprite_index = spr_player_idle;
		image_index = 0;
	}
}