//tocando a musica do boss
audio_play_sound(snd_boss, 0, 1);
/*
Estado 1 = parado dando tiro
Estado 2 = movendo dando tiro 1
Estado 3 = parado intercalando entre tiro 1 e tiro 2

Estado especial = ficar invulneravel enquanto cria dois minions para recuperar a vida
estado especial 2 = 
*/
actualState = choose("state1", "state2", "state3");
//actualState = "state4";

shootDelay = room_speed / 2;
waitingShoot = 0;

//variaveis para trocar de estado
stateDelay = room_speed * 10;
waitingState = stateDelay;
//velocidade horizontal do boss
speedX = 3;
//limite de vida
maxLife = 1500;
//vida do boss
life = maxLife;
//dando a sprite padrão para o boss
//sprite_index = spr_boss;

//variavel para ver se o boss tem minions
hasMinions = false;
//metódo parar criar o tiro 1
createShootTwo = function () {
	instance_create_layer(x, y + 80, "Shoots", objSecondEnemyShoot);
	
	//som do tiro
	audio_play_sound(sfx_laser1, 1, false);
}
///metódo para criar o tiro 2
///@method create_shoot_two(true_right_false_left);
createShootOne = function (right) {
	//valor para criar o tiro no canhaozinho da sprite
	//invertendo o valor de x caso seja true
	var valueToAddInX = right ? 160 : -160;
	//criando os tiros
	instance_create_layer(x + valueToAddInX, y + 10, "Shoots", objSquidShoot);
	
	//som do tiro
	audio_play_sound(sfx_laser1, 1, false);
}

//metódo do estado 1
stateOne = function() {
	//diminuindo o valor da espera do tiro
	waitingShoot--;
	//códigos do state 1
	//criando o tiro 2 se a espera do tiro for menor ou igual a 0
	if (waitingShoot <= 0) {
		createShootTwo();
		//vou mandar ele esperar
		waitingShoot = shootDelay;
	}
}
state2 = function() {
	//indo para a direita
	x += speedX;
	
	//invertendo a velocidade horizontal se toquei no fim da tela
	if (x >= 1632 || x <= 288) {
		//invertendo a velocidade horizontal
		speedX *= -1;
	}
	
	//se o tempode espera do tiro for menor ou igual a 0, executa o estado 2
	waitingShoot--;
	if (waitingShoot <= 0) {
		//criando o tiro da esquerda
		createShootOne(false);
		//criando o tiro da direita
		createShootOne(true);
		waitingShoot = shootDelay * 2;
	}

}
state3 = function() {
	//diminuindo o valor do tempo de espera
	waitingShoot--;
	//criando o tiro 2 do canhão se a espera for menor ou igual a 0
	if (waitingShoot <= 0) {
		//criando o tiro 2
		createShootTwo();
		//dando delay ao tiro
		waitingShoot = shootDelay * 2;//segundo
	}
	
	if (waitingShoot == shootDelay) {//meio segundo para criar o outro tiro,
		//criando o tiro da esquerda
		createShootOne(false);
	}
	if (waitingShoot == shootDelay +  + round(shootDelay / 4)) {
		//criando o tiro da direita
		createShootOne(true);
	}
	
}
state4 = function () {
	//trocando a sprite do boss
	sprite_index = spr_brigthness_boss;

	
	//criando os minions esquerda e direita
	if (!hasMinions) {
		instance_create_layer(64, 672, "Enemies", objMinion);
		instance_create_layer(1856, 672, "Enemies", objMinion);
		
		hasMinions = true;
	}
	//minionLeft.image_angle = 270; caso eu quisesse deixar eles de lado
}