//me desenhando
draw_self();
 
//desenhando brilho

//alterando como a gpu trata as cores
gpu_set_blendmode(bm_add);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale + 0.2 , image_yscale + 0.2, image_angle, powerUpColor, image_alpha - 0.3);

//voltando ao normal
gpu_set_blendmode(bm_normal);