//deixar a tela escura se eu ainda não troquei de room

if (!switchedRoom) {
	alpha += 0.02;
} else {
	alpha -= 0.02;
}


if(alpha <= 0) {
	instance_destroy();
}

//checar se está totalmente escura alpha >= 1
if (alpha >= 1 && !switchedRoom) {
	room_goto(destiny);
}


