// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//função do screenshake
function screenshake(_shake){
	var screen = instance_create_layer(0,0, "Shield", objScreenshake);
	screen.shake = _shake;
}
//adicionando pontos
function addingPoints(points) {
	if (instance_exists(objGameController)) {
		objGameController.addPoints(points);
	}
}

//destruindo a sequencia
function destroySequence() {
	//tentando pegar a sequencia da minha 
	var elements = layer_get_all_elements("BossArrive");
	layer_sequence_destroy(elements[0]);
	
	// criando boss
	instance_create_layer(960, 256, "Boss", objBoss);
}

function destroySequenceBossDeath() {
	var elements = layer_get_all_elements("BossDeath");
	layer_sequence_destroy(elements[0]);
}
//criando sequence do player
function createPlayerSeq() {
	layer_sequence_create("Sequences", objPlayer.x, objPlayer.y, sqPlayerWin);
	//matando o player
	instance_destroy(objPlayer, false);
	
	//impedindo q o control crie o game over;
	if (instance_exists(objGameController)) {
		objGameController.levelCompleted = true;
	}
}

function createTransition() {

	var transition = instance_create_layer(0, 0, "Player", objTransition);
	transition.destiny = rmStart;
}