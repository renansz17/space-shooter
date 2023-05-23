//movendo para esquerda
var up, down, left, right;

up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));


//movendo o y com base no resultado da conta para saber se to indo para cima ou para baix, direita ou esquerda
//ai multiplicamos pela velocity

y += (down - up) * velocity;
x += (right - left) * velocity;

//pode ser desse jeito tbm
//y += (down * velocity) - (up  * velocity);
//x += (right * velocity) - (left * velocity);

// ao apertar espaço, atira
shooting();

//ferramentas de debug
//fazer com o que level suba sempre que eu apertar setinha pra cima

if(keyboard_check_pressed(vk_up)) {
	
	//apenas se o level do tiro for menor que 5
	if(shootLevel < 5) {
		shootLevel++;
	}
}
//fazer com o que o level diminua quando apertar seta para baixo
if(keyboard_check_pressed(vk_down) && shootLevel > 1) {
	//apenas se o level do tiro for menor que 5
		shootLevel--;
}

//diminuir a espera do tiro se eu apertei a setinha para esquerda
if(keyboard_check_pressed(vk_left) && waiting_shoot_time > 20) {
		waiting_shoot_time *= 0.9;
}
//aumentar a espera do tiro se apertei a setinha para direita
if(keyboard_check_pressed(vk_right) && waiting_shoot_time > 10) {
		waiting_shoot_time *= 1.1;
}