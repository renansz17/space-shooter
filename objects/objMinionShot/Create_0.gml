// Inherit the parent event
event_inherited();

//achando minha direção
//checando se o boss existe
if (instance_exists(objBoss)) {
	direction = point_direction(x, y, objBoss.x, objBoss.y);
	
	//apontando para onde o player está
	image_angle = direction + 90;
}

