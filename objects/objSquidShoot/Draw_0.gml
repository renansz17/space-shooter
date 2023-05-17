//se desenhando
draw_self();

//alterando como a gpu trata as cores
gpu_set_blendmode(bm_add);
draw_sprite_ext(spr_glow_squid_enemy, image_index, x, y, image_xscale * 0.7, image_yscale * 0.7, image_angle, colors, 0.4);

//voltando ao normal
gpu_set_blendmode(bm_normal);