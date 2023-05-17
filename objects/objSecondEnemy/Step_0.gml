//herdando eventos do pai
event_inherited();

//checando se estou na direita ou na esquerda da room
isLeft = x > room_width / 2;
isHalfScreen = y > room_height / 3;

//so vou para alguma direção se tiver no terço da tela
if (isHalfScreen && canMove == true) {
	if(isLeft) {
		//fazendo eu ir para a esquerda
		hspeed = -4;
		//avisando q ele n pode mais se mover
		canMove = false;
	} else {
		//fazendo eu ir para a direita
		hspeed = 4;
		//avisando q ele n pode mais se mover
		canMove = false;
		show_debug_message("a")
	}
}