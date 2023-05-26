//diminuindo a transparencia em 10%
image_alpha -= 0.15;

//me destruindo se o alpha for menor que .5 
if (image_alpha <= 0) {
	instance_destroy(id, false);
}

//repetindo o alarme
alarm[0] = room_speed
