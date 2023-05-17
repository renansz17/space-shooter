//herdando o evento do pai
event_inherited();

//definindo a velocidade do tiro
speed = 6;

//achando a direção para onde devo ir
//indo para aquela direção
//checando se meu player existe
if (instance_exists(objPlayer)) {
	direction = point_direction(x, y, objPlayer.x, objPlayer.y);
}


//apontando para onde o player está
image_angle = direction + 90;

