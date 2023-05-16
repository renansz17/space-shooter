//diminuindo a escala do tiro

//lerp é uma função de aproximação, eu faço o meu valor chegar em outro por uma porcentagem;
// lerp(valor que eu tenho, valor para chegar, porcentagem de aproximação);

//step 1 = 1 -10 =	5 - 10;
//step 2 = 5 -10 =  7.5 - 10;
//step 3 = 7,5 - 10 = 8.75 - 10;

//fazendo meu xscale e yscale chegar no valor original que é 1;
image_xscale = lerp(image_xscale, 1, 0.5);
image_yscale = lerp(image_yscale, 1, 0.5);