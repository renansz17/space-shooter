//ficando vísivel em 1 segundo se eu ainda n estou visivel
if (image_alpha < 1) {
	image_alpha += 1 / room_speed;
}


//depois diminuindo a escala quando for menor do que 0.5
if (scale > 1.5 || scale < 0.5) {
	//invertendo o aumento da escala
	//fazendo também ele inverter o sinal da escala for menor do que 0.5 
	valueToIncreaseScale *= -1;
}
//aumentando a escala enquanto ela for menor do que 1.5s
scale += valueToIncreaseScale;