//seguindo o player
//se o alvo for noone, ele se destroi ou nao existe
if (!target || !instance_exists(target)) {
	instance_destroy();
}  else {
	x = target.x;
	y = target.y;
}
//seguindo o player
//meu alvo precisa existir
//if (instance_exists(target)) {
//	x = target.x;
//	y = target.y;
//}
