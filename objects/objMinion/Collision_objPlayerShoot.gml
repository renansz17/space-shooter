//se o minion tiver menos de 10 de hp
//ele toma dano
//se nao ele morre
if (life > 0 ) {
	//diminuindo a vida do minion
	life--;
} else {
	//matando o minion
	instance_destroy();
}
//se destruindo dps de colidir
instance_destroy(other);