//randomizando o jogo
randomize();

//iniciando meu alarme para criar inimigos

alarm[0] = room_speed;

//iniciando o sistema de pontos;

points = 0;

//metodo para ganhar pontos

//iniciando o sistema de level
level = 1;
//quantos pontos precisa para o proximo level
nextLevel = 100;

//variavel de game over
gameOverSeq = noone;

bossCreated = false;

levelCompleted = false;

///@method addPoints(pointsToAdd)
addPoints = function (pointsToAdd) {
	//ganhando multiplica a quantidade de pontos de acordo com o level
	points += pointsToAdd * level;
	
	//ganhando level se os pontos forem maior que o level
	if (points >= nextLevel) {
		//adicionando level
		level++;
		//multiplicando a quantidade de pontos para o prox level
		nextLevel *= 2;
		
		/*
		 1 = 0
		 2 = 100
		 3 = 200
		 4 = 400
		 5 = 800
		 6 = 1600
		 7 = 3200
		 8 = 6400
		 9 = 12800
		 10 = 25600
		*/
	}
}

//criando metodo para gerar inimigos
createEnemy = function () {
	//criando as variaveis que contem as coordenadas aleatorias para criar os inimigos
	//aumentando o limite com base no level do jogo
	var horizontalRange = irandom_range(64, 1880);
	var verticalRange = irandom_range(-96, -1504 - (level * 500));

	//a chance de um inimigo mais forte depende do level
	var chance = random_range(0, level);
	//criando o inimigo 1
	var enemy = objSquidEnemy;

	//se o valor da chance for maior do que 2
	if (chance > 2) {
		enemy = objSecondEnemy;
	}
	
	//criando o inimigo na posição definida
	instance_create_layer(horizontalRange, verticalRange, "Enemies", enemy);
}