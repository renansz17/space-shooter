//ao executar o alarm ele deve voltar uma imagem
//se for o frame 0, se destroi por que o escudo acabou
if (image_index > 0) {
	image_index--;
	
	//deixando a imagem transparente
	image_alpha -= 0.2; 
} else {
	instance_destroy();
}

//reiniciando o alarme
alarm[0] = room_speed;

//se for o frame 0, se destroi por que o escudo acabou
//pode ser desse jeito
//if (image_index == 0) {
//	instance_destroy();
//}