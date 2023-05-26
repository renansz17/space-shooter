//velocidade - .05 - limite = 10;
//espera tiro - 10% - limite = 20;
//level tiro - 1 - limite = 5;

velocity = 5;
shootLevel = 1;
//fazendo o metodo de atirar
//ativando o alarm pelo step, a cada 1 seg 
// se apertei e espaço e o alarme nao foi ativado
waiting_shoot_time = room_speed;
//vida do player
life = 3;

//y do player

secondShoot = function() {
	var shootY =  y - sprite_height / 3;
	//tiro level 2
	//criando o tiro da asa esquerda
	var shootLeft = instance_create_layer(x - 60, shootY + 10, "Shoots", objSecondPlayerShoot);
	shootLeft.hspeed = -3;
	//criando o tiro da asa direita
	var shootRight = instance_create_layer(x + 60, shootY + 10, "Shoots", objSecondPlayerShoot);
	shootRight.hspeed = 3;
}

createFourthShoot = function () {
	var value = 75;
	var shootY =  y - sprite_height / 3;
	repeat(3) {
		//criando o tiro 1 e 2 juntos
		var shoot = instance_create_layer(x, shootY + 10, "Shoots", objPlayerShoot);
		//definindo a direção dele
		shoot.direction = value;
		//rotacionadno o tiro
		shoot.image_angle = shoot.direction - 90
		//adicionando mais 15 para atirar nas 3 direções
		value += 15;
	}
}

shooting = function () {
	var fire = keyboard_check(vk_space);
	var shootY =  y - sprite_height / 3;
	if (fire && alarm[0] == -1) {
	//ativando o alarme	
	alarm[0] = waiting_shoot_time;
	
	//criando o tiro o tiro na hora que eu apertei espaço
	//e depois atirar novamente
	
	//criar uma condição para atirar dependendo do level
	
		//tiro do level 1
		if (shootLevel == 1) {
			instance_create_layer(x, shootY, "Shoots", objPlayerShoot);
		} 
		else if (shootLevel == 2) {
			secondShoot();
		}
		else if (shootLevel == 3) {
			//criando o tiro 1 e 2 juntos
			instance_create_layer(x, shootY, "Shoots", objPlayerShoot);
			secondShoot();
		}
		else if (shootLevel == 4) {
			createFourthShoot();
		}
		else if (shootLevel == 5){
			secondShoot();
			createFourthShoot();
		}
	}	
}

//criando o powerup do player
///@method powerUp(chance)
powerUp = function (chance) {
	if (chance >= 90 && shootLevel < 5) {
		//aumentando o levle do tiro
		shootLevel++;
	} else if (chance >= 45 && waiting_shoot_time > 20) {
		//diminuindo a espera do tiro
		waiting_shoot_time *= 0.9;
	} else {
		//aumentando velocidade do player
		if (velocity < 10) {
			velocity += 0.5;
		}
	}
}
	
///@method decreaseLife()
decreaseLife = function () {
	//fazendo o player perder vida
	if(life > 0) {
		life--;
	} else {
		instance_destroy();
	}
}

