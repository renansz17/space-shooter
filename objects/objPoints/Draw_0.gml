//desenhando os pontos

draw_set_font(fntButtons);
//segurando o valor dos pontos
var _points = round(points);
draw_text(140, 300, "Max score: " + string(_points));

draw_text(140, 330, "Max deaths: " + string(global.maxPlayerDeath));

draw_text(140, 360, "Max enemies death: " + string(global.maxEnemiesDie));
	
draw_set_font(-1);

//fazendo chegar nos pontos do max pontos
//se pontos for menor q max pontos eu aumento o valor dele
//pegando 5% dos max points e adicionando esse valor em pontos enquanto ele for menor
//do que max points

if (points < global.maxPoints) {
	//aumentando o valor de points em 5% de max points
	var incrementPoints = global.maxPoints * 0.005; // meio porcento
	points += incrementPoints;
}
