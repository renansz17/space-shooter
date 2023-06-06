//reiniciando a room se o player morrer
if (gameOverSeq) {
	var transition = instance_create_layer(x, y, layer, objTransition);
	transition.destiny = rmStart;

}