 //desenhar a vida do usuário

//var heightGui = display_get_gui_height();

//desenhando a navezinha para ser a vida do usuário
//desenhando a quantidade de vida que o player tem
//desenhando uma vida do lado da outra
var multiplier = 0;
var value = 50;
repeat(life) {
	//primeiro fica no 40, segundo 40 + 20 e terceiro 40 + 40
	//1 = 40 + 20 * 0 = 40
	//2 = 40 + 20 * 1 = 60
	//3 = 40 + 20 * 2 = 80
	draw_sprite_ext(spr_player, 0, 40 + value * multiplier, 90	, 0.3 , 0.3, 0, c_white, 0.5);
	//depois de desenhar, adiciona mais 1 para o multiplicador
	multiplier++;
}

//garantindo q o multiplicado é igual a zero
multiplier = 0;
repeat(shields) {
	//primeiro fica no 40, segundo 40 + 20 e terceiro 40 + 40
	//1 = 40 + 20 * 0 = 40
	//2 = 40 + 20 * 1 = 60
	//3 = 40 + 20 * 2 = 80
	draw_sprite_ext(spr_shield, 2, 40 + value * multiplier, 40, 0.3 , 0.3, 0, c_white, 0.5);
	//depois de desenhar, adiciona mais 1 para o multiplicador
	multiplier++;
}
