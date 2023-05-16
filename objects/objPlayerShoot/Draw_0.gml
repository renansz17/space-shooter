//eu vou me desenhar
draw_self();

//desenhando brilho
/*
meu tiro é 16 x 24;
meu brilho é 59 x 109;
*/

//alterando como a gpu trata as cores
gpu_set_blendmode(bm_add);
draw_sprite_ext(spr_glow_shoot, image_index, x, y, image_xscale * 0.7, image_yscale * 0.7, image_angle, colors, 0.3);

//voltando ao normal
gpu_set_blendmode(bm_normal);