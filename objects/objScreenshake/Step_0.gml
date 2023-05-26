//movendo a tela
view_xport[0] = random_range(-shake, shake);
//movendo a tela para cima e para baixo
view_yport[0] = random_range(-shake, shake);

//diminuindo o valor do screenshake
shake *= 0.9;
//se shake vou menor doq 0.5, ele irá se destruir
if(shake < 0.5 ) {
	instance_destroy();
}
