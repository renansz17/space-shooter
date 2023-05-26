//checando se o player morreu
if (!instance_exists(objPlayer) && !gameOverSeq) {
	gameOverSeq = layer_sequence_create("Sequences", room_width / 2, room_height / 2, sqGameOver);
}