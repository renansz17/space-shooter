//se destruindo ao sair por baixo da room
//umjeito de fazer pode ser esse
//if (bbox_bottom > room_height) {
//	instance_destroy(id);
//}

//outro jeito de fazer é esse

if (y > room_height + 100) {
	instance_destroy(id, false);
}