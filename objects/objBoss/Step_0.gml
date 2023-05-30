//debug do estado atual
show_debug_message(actualState);
//checando se n estou no estado 4
if (actualState != "state4") {
	//usando a sprite original
	sprite_index = spr_boss;
}

//se eu apertar enter, ele perde 10 de vida
if (keyboard_check(vk_enter)) {
	life -=10;
}
//alterando os estados
//diminuindo a espera do estado
waitingState--;
//if (waitingState <= 0) {
//	//vou escolher um outro estado
//	actualState = choose("state1", "state2", "state3");
//	//fazendo o espera estado ter um valor alto de novo
//	waitingState = stateDelay;
//}

//iniciando o estado 1 
if (actualState == "state1") {
	stateOne();
} else if (actualState == "state2") {
	//iniciando o segundo estado
	state2();
}
else if (actualState == "state3") {
	//iniciando o estado 3
	state3();
}
else if (actualState == "state4") {
	//código do state 4
	state4();
}