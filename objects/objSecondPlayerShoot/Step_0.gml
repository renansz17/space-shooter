/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//movendo minha direção apos x pixels
//checando se eu me movi 50px para direit
//checando se minha posição atual é maior que a posição inicial
//checando se eu movi para esquerda 
if (x > xstart + 50 || x < xstart - 50) {
	//eu devo inverter a velocidade horizontal
	hspeed *= -1;
}

