//criando a barra de vida
//desenhando a barra de vida com 20 pixels de altura
//convertendo o valor da vida atual do boss em um numero entre 0 e 100
//vida atual divida por vida max vai retornar um valor entre zero e um, enquanto a vida atual for menor do que a vida maxima
//menor ou igual no caso
//ao multiplicar por 100, a gente recebe um valor entre 0 e 100;
var bossLife = (life / maxLife) * 100;

draw_healthbar(200, 20, 1080, 30, bossLife, c_black, c_lime, c_green, 0, true, true);