/// @description criando inimigos
//criando as variaveis que contem as coordenadas aleatorias para criar os inimigos
var horizontalRange = irandom_range(64, 1880);
var verticalRange = irandom_range(-96, -1300);

//criando o inimigo 1
instance_create_layer(horizontalRange, verticalRange, "Enemies", objSquidEnemy);

//reiniciando meu alarme
alarm[0] = room_speed;

