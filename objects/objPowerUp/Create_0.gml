 //criando uma chance entre 0 100 para ele decidir o upgrade;
powerUpChance = random(100);
 //se o valor de chance for 90 ou mais, cria o powerup do tiro
 //se o valor de chance for 45 ou mais, ela cria o powerup da velocidade
 //se nao ela cria o lvl up de aumentar a cadencia de tiro
 
 //fazendo ele se mover
 speed = 2;
 direction = irandom(359);
 
 alarm[0] = room_speed;
 
 //dependendo da cor , a cor vai ser diferente
 if(powerUpChance >= 90) {
	powerUpColor = c_red;
 } else if(powerUpChance >= 45) {
	powerUpColor = c_yellow;
 } else { 
	powerUpColor = c_aqua
}