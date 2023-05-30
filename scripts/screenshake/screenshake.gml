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