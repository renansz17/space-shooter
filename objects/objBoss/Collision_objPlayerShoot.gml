//tirando vida do boss
if (actualState != "state4") {
	if (life > 0) {
		//se vida for maior q zero, eu retiro vida do boss
		life--;
	} else {
		//morrendo se n tiver vida
		instance_destroy();
	}
}
//destruindo o tiro
instance_destroy(other);