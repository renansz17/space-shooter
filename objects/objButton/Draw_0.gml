//desenhando um texto no botão
draw_self();
draw_set_color(c_black);

//definindo minha fonte
draw_set_font(fntButtons);
//ajustando orientação do texto
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x,y, text);

//reiniciando as variaveis do draw
draw_set_halign(-1);
draw_set_valign(-1);
draw_set_color(c_white);
draw_set_font(-1);