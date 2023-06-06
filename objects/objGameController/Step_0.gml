//checando se o player morreu e level nao está completo
if (!instance_exists(objPlayer) && !gameOverSeq && !levelCompleted) {
	gameOverSeq = layer_sequence_create("Sequences", room_width / 2, room_height / 2, sqGameOver);
	//som do tiro
	audio_play_sound(sfx_lose, 1, false);
}