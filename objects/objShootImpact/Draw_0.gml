//se desenhando
draw_self();

//configurando a mistura de cores na gpu
gpu_set_blendmode(bm_add);
//fazendo o efeito
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale * 1.3, image_yscale * 1.3, image_angle, colors	, 0.5);

gpu_set_blendmode(bm_normal);