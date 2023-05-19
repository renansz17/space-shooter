/// @description criando inimigos

//repetindo o mesmo código
//checando se há inimigos na tela
if(!instance_exists(objSquidEnemy)) {
	
	var repeateLevel = 10 * level;
	repeat(repeateLevel) {
		createEnemy();
	}
}

//reiniciando meu alarme
alarm[0] = room_speed * 5;

