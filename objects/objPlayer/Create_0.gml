velocity = 5;

//fazendo o metodo de atirar
shooting = function () {
	var fire = keyboard_check_pressed(vk_space);
	
	if (fire) {
		instance_create_layer(x, y - sprite_height / 2,"Shoots", objPlayerShoot);
	}
	
}