/// @description Controla o objeto

//Movimentação horizontal
h_move = keyboard_check(vk_right) - keyboard_check(vk_left);
//Movimentação vertical
v_move = keyboard_check(vk_down) - keyboard_check(vk_up);

//Se o Player esta se movimentando horizontal ou vertical
if (h_move != 0 or v_move != 0)
{
	//Altera a Sprite para Walking
	if (sprite_index != spr_player_walking)
	{
		sprite_index = spr_player_walking;
		image_index = 0;
	}
	
	//Se o valor for diferente de 0
	if (h_move != 0)
	{
		//Diz a direção que o Player deve olhar
		image_xscale = h_move;
	}
	
	//Retorna o angulo de direção
	var _dir = point_direction(0,0,h_move,v_move);

	//Movimentação X e Y
	mov_x = lengthdir_x(2,_dir);
	mov_y = lengthdir_y(2,_dir);

	x += mov_x;
	y += mov_y;
}
else //Senao altera a Sprite para Idle
{
	if (sprite_index != spr_player_idle)
	{
		sprite_index = spr_player_idle;
		image_index = 0;
	}
}