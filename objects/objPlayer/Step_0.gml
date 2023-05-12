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
