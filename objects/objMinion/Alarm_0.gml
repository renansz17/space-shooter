//criando o tiro do minion
instance_create_layer(x, y, "Shoots", objMinionShot);

//reiniciando o alarme
alarm[0] = room_speed / 2;

//falando q ele deu
firstShoot = true;