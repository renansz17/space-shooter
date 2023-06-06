/// @description criando inimigos

//repetindo o mesmo código
//checando se há inimigos na tela
//criando inimigos apenas antes do level 10
if(!instance_exists(objSquidEnemy)) {
	//criando inimigos
	var repeateLevel = 10 * level;
	
	if (level < 10) {
		repeat(repeateLevel) {
			createEnemy();
		}
	} else {
		//criando o boss
		if (!bossCreated) {
			layer_sequence_create("BossArrive", 960, 512, sqBossArrive);
			bossCreated = true;
			
			//parando de tocar a musica
			audio_stop_all();
			
		}
	}
}
//reiniciando meu alarme
alarm[0] = room_speed * 3;

