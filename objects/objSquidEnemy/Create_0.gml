 //fazendo ele ir para baixo
vspeed = 4;

//iniciando o alarme
alarm[0] = random_range(1, 3) * room_speed;

//quantos pontos o inimigo dá para o player
destroyPoints = 10;

enemy_shooting = function () {
	//se ele entrar na tela, ele pode atirar
	if (y > 0) {
		instance_create_layer(x - 3, y + sprite_height/3,"Shoots", objSquidShoot);
	}
}