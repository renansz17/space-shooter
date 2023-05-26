//criando a explosão ao ser destruido e em sua layer
instance_create_layer(x, y, layer, objExplosion);

//dando pontos ao player qunado inimigo explodir
//fazendo ele ganhar pontos só se o objeto existir

if(instance_exists(objGameController)) {
	objGameController.addPoints(destroyPoints);
}

//dropando o item
dropPowerUp(dropChance);