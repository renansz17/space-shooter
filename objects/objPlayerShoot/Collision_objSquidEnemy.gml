//destroi o inimigo
instance_create_layer(x,y,"Shoots", objImpact);
instance_destroy(objSquidEnemy);
//se auto destroi
instance_destroy();