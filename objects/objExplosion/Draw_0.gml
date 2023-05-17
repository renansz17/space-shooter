draw_self();
//adicionando config da gpu para misturar cores
gpu_set_blendenable(bm_add);

//fazendo o efeito
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale * 1.3, image_yscale * 1.3, image_angle, colors, 0.4);

gpu_set_blendmode(bm_normal);

