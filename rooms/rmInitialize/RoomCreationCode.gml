//código que roda sempre que a room é iniciada
//iniciar minhas variaveis globais

//pontuação mais alta do player
global.maxPoints = 0;
//quantas vezes o player morreu
global.maxPlayerDeath = 0;
//quantos inimigos ele matou
global.maxEnemiesDie = 0;

//indo para a proxima room
//debugando os valores globais

show_debug_message(global.maxPoints);
show_debug_message(global.maxPlayerDeath);
show_debug_message(global.maxEnemiesDie);

room_goto(rmStart);