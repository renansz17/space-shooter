//variavel de game over
//checando se o player morreu
layer_sequence_create("BossDeath", x, room_height / 2 - 32, sqBossDeath);
global.maxEnemiesDie++;
addingPoints(200);