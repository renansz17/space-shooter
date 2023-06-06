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
//escudos dom player
shields = 3;
//shield
myShield = noone;

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
	
	//criando o som do tiro
	audio_play_sound(sfx_laser2, 1, false);
	
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
	if (chance >= 90) {
		//aumentando o levle do tiro
		if (shootLevel < 5 ){
			shootLevel++;
		} else {
			//caso já esteja no level máximo, eu ganho pontos
			addingPoints(100);
		}
	} else if (chance >= 45) {
		//diminuindo a espera do tiro
		if (waiting_shoot_time > 15) {
			waiting_shoot_time *= 0.9;
		} else {
			//caso eu tenha o max de powerup
			addingPoints(100);
		}
	} else {
		//aumentando velocidade do player
		if (velocity < 10) {
			velocity += 0.5;
		} else {
			//caso já esteja no level máximo, eu ganho pontos
			addingPoints(10);
		}
	}
}
	
///@method decreaseLife()
decreaseLife = function () {
	//fazendo o player perder vida e só posso perder vida se meu escudo é noone
	if(life > 0 && !myShield) {
		life--;
		//dando um screenshake se levar dano
		screenshake(5);
	} else {
		instance_destroy();
		//dando um screenshake se levar dano
		screenshake(20);
	}
}

createShield = function () {
	var shield = instance_create_layer(x, y, "Shield", objShield);
	//dando o id do player ao escudo
	shield.target = id;
	//diminuindo a quantidade de escudos
	//avisando q o escudo é o meu escudo
	myShield = shield;
	shields--;

}