//Inicio de Declaración de Variables

int colum1A, colum1B, colum2A, colum2B; //Se usan para marcar la poscion que tendran cada uno de los rectangulos de los colores
int colOK1B=40, colOK2B=40; //Estas variables son para definir los colores dentro de este metodo para los botontes de Ok tanto del Jugador 1 como Jugador 2
int rect1n1=0, rect1n2=0, rect1n3=0, rect1n4=0, rect1n5=0, rect1n6=0, rect1n7=0, rect1n8=0, rect1n9=0, rect1n10=0; //Estos son los rectangulos que contendran los colores del Jugador 1
int rect2n1=0, rect2n2=0, rect2n3=0, rect2n4=0, rect2n5=0, rect2n6=0, rect2n7=0, rect2n8=0, rect2n9=0, rect2n10=0; //Estos son los rectangulos que contendran los colores del Jugador 2
int basecolore=50; //Esta variables sera la altura como el ancho de cada rectangulo que contienen los colores a elegir
int Okcolor1=0,Okcolor2=0; //Son variables para el color de los mensajes de que el jugador ya escogio


float col1R=50, col1G=50, col1B=50; //Son los colores iniciales de la raqueta preeliminar del Jugador 1, seran la combinacion de color cuando se seleccionen los cuadros de color
float col2R=50, col2G=50, col2B=50; //Son los colores iniciales de la raqueta preeliminar del Jugador 2, seran la combinacion de color cuando se seleccionen los cuadros de color

boolean formaPlayer1=true, formaPlayer2=true; //Son variables para determinar los estados si son ciertos o falsos
//Fin de Declaración de Variables

void colorRaquetas(){

  //background(0);
 
  //Se definen las columnas de los colores dando así una especie de alineacion
  colum1A=(width/2-30)/3;
  colum1B=(width/2-30)/3*2;
  colum2A=(width/2+30)+colum1A;
  colum2B=(width/2+30)+(2*colum1A);
  
  stroke(200);
  strokeWeight(2);
  line(width/2, 50, width/2, height-100);

  //Se crean los botones para los Ok del Jugador 1 y Jugador 2
  fill(colOK1B);
  stroke(0);
  
  rect(180, height-100, baseOK2, alturaOK2, 10);
  textSize(30);
  fill(0);
  text("OK", 157, height-90);

  fill(colOK2B);
  rect(width-180, height-100, baseOK2, alturaOK2, 10);
  fill(0);
  text("OK", width-203, height-90);

  //Aqui ya se crean los colores personalizados en donde al darle click al color se pondra el rectangulo de ese color para el Jugador1
  stroke(col1R, col1G, col1B);
  fill(col1R, col1G, col1B);
  rect(width/2-30, height/2, base*2, altura*2);

  if (formaPlayer1==true) { //En caso de que la formaPlayer1 sea verdadera
    stroke(col1R, col1G, col1B);//Entonces se llenaran los colores y bordes correspondientes a elegir
    fill(col1R, col1G, col1B);
    rect(width/2-30, height/2, (base*2)-12, (altura*2)-12);
  }
  if (formaPlayer1==false) {  //En caso de que la formaPlayer2 sea falso
    stroke(0); //Los bordes y colores seran de color negro
    fill(0);
    rect(width/2-30, height/2, ( base*2)-12, (altura*2)-12);
  }

  //Aqui ya se crean los colores personalizados en donde al darle click al color se pondra el rectangulo de ese color para el Jugador2
  stroke(col2R, col2G, col2B);
  fill(col2R, col2G, col2B);
  rect(width/2+30, height/2, base*2, altura*2);

  if (formaPlayer2==true) { //En caso de que la formaPlayer2 sea verdadera
    stroke(col2R, col2G, col2B);//Entonces se llenaran los colores y bordes correspondientes a elegir
    fill(col2R, col2G, col2B);
    rect(width/2+30, height/2, (base*2)-12, (altura*2)-12);
  }
  if (formaPlayer2==false) { //En caso de que la formaPlayer2 sea falso
    stroke(0); //Los bordes y colores seran de color negro
    fill(0);
    rect(width/2+30, height/2, (base*2)-12, (altura*2)-12);
  }

  //Aqui ya se definen los colores que tendran cada uno de los recuadros para el Jugador1 así como el grosor
  strokeWeight(5);

  stroke(rect1n1);
  fill(255, 255, 255);
  rect(colum1A, porcion, basecolore, basecolore);
  stroke(rect1n2);
  fill(243, 248, 48);
  rect(colum1A, porcion*2, basecolore, basecolore);
  stroke(rect1n3);
  fill(255, 213, 0);
  rect(colum1A, porcion*3, basecolore, basecolore);
  stroke(rect1n4);
  fill(255, 115, 0);
  rect(colum1A, porcion*4, basecolore, basecolore);
  stroke(rect1n5);
  fill(255, 0, 0);
  rect(colum1A, porcion*5, basecolore, basecolore);

  stroke(rect1n6);
  fill(245, 173, 238);
  rect(colum1B, porcion, basecolore, basecolore);
  stroke(rect1n7);
  fill(250, 0, 255);
  rect(colum1B, porcion*2, basecolore, basecolore);
  stroke(rect1n8);
  fill(0, 0, 255);
  rect(colum1B, porcion*3, basecolore, basecolore);
  stroke(rect1n9);
  fill(17, 247, 234);
  rect(colum1B, porcion*4, basecolore, basecolore);
  stroke(rect1n10);
  fill(0, 255, 0);
  rect(colum1B, porcion*5, basecolore, basecolore);
  
  //Aqui ya se definen los colores que tendran cada uno de los recuadros para el Jugador2
  stroke(rect2n1);
  fill(255, 255, 255);
  rect(colum2A, porcion, basecolore, basecolore);
  stroke(rect2n2);
  fill(243, 248, 48);
  rect(colum2A, porcion*2, basecolore, basecolore);
  stroke(rect2n3);
  fill(255, 213, 0);
  rect(colum2A, porcion*3, basecolore, basecolore);
  stroke(rect2n4);
  fill(255, 115, 0);
  rect(colum2A, porcion*4, basecolore, basecolore);
  stroke(rect2n5);
  fill(255, 0, 0);
  rect(colum2A, porcion*5, basecolore, basecolore);

  stroke(rect2n6);
  fill(245, 173, 238);
  rect(colum2B, porcion, basecolore, basecolore);
  stroke(rect2n7);
  fill(250, 0, 255);
  rect(colum2B, porcion*2, basecolore, basecolore);
  stroke(rect2n8);
  fill(0, 0, 255);
  rect(colum2B, porcion*3, basecolore, basecolore);
  stroke(rect2n9);
  fill(17, 247, 234);
  rect(colum2B, porcion*4, basecolore, basecolore);
  stroke(rect2n10);
  fill(0, 255, 0);
  rect(colum2B, porcion*5, basecolore, basecolore);

  //Aqui se crean los texto de Ready para el Jugador1 y el Jugador2
  textSize(25);
  strokeWeight(1);
  stroke(Okcolor1);
  fill(Okcolor1);
  text("Jugador 1 READY", 100, height-30); //Ready para el Jugador1
  stroke(Okcolor2);
  fill(Okcolor2);
  text("Jugador 2 READY", width-270, height-30);//Ready para el jugador 1

  if (rect2n1+rect2n2+rect2n3+rect2n4+rect2n5+rect2n6+rect2n7+rect2n8+rect2n9+rect2n10==200) { //En caso de que la suma de los rectangulos sea igual a 200
    colOK2B=200; //Se cambia el color Ok del Jugador 2
  }

  if (rect1n1+rect1n2+rect1n3+rect1n4+rect1n5+rect1n6+rect1n7+rect1n8+rect1n9+rect1n10==200) { //En caso de que la suma de los rectangulos sea igual a 200
    colOK1B=200; //Se cambia el color Ok del Jugador 1
  }

  if (Okcolor1==200){ //En caso de que OkColor1 sea igual a 200
    colOK1B=40; //El color Ok del Jugador 2 cambiara
  }
  
  if (Okcolor2==200){ //En caso de que OkColor1 sea igual a 200
    colOK2B=40; //El color Ok del Jugador 2 cambiara
  }

  if (Okcolor1+Okcolor2==400) { //En caso de que la suma de OkColor1 y Okcolor2 sea de 400
    colorRaq=0; //colorRaq sera igual a 0 así como que tambien se cambiaria de metodo
    juego=255; //La variable juego sera igual a 255 por lo que se llamara al metodo cuerpoJuego, ya el juego en si
  }
}
