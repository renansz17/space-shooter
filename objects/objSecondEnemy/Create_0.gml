event_inherited();
//chance de dropar power up
dropChance = 30;

//pontos que é dado ao destruir
destroyPoints = 20;

//criando minha variavel de controle para saber se estou me movendo para os lados
canMove = true;

//fazendo ele atirar;
enemy_shooting = function () {
	//se ele entrar na tela, ele pode atirar
	if (y > 0) {
		instance_create_layer(x - 3, y + sprite_height/3,"Shoots", objSecondEnemyShoot);
	}
}