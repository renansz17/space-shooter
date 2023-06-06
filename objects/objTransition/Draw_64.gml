//desenhando um retangulo preto na tela

//desenhando o retangulo com o valor do alpha
draw_set_alpha(alpha);
//deixando o retangulo preto
draw_set_color(c_black);
//pegando infos da gui
var x2 = display_get_gui_width();
var y2 = display_get_gui_height();

draw_rectangle(0, 0, x2, y2, false);

draw_set_color(c_white);
draw_set_alpha(1);


