//Inicio de Declaración de Variables
PImage albatro; //Variables para poder llamar a imagenes

int puntoP1, puntoP2; //Variables para los contadores de los jugadores 1 y 2
int r=(int)random(0, 100); //Variable para el movimiento de las raquetas

float dia=15; //Es el diametro que tiene la pelota de Ping Pong
float basepunt=52; //Variable que se usa para la decoracion del marcador, son rectangulos para adornar el numero
float velPallax=0, velPlayer1=0, velPlayer2=0, velPallay=0; //Variables que se usan tanto para la velocidad de las raquetas como de la pelota
float rect8=altura/8; //Variable que se usa para el contacto de la pelota

boolean scorer=true; //Variable para el marcador que nos sirve para marcar un ganador
boolean victoryP1=true; //Variable para verificar la victoria del Jugador 1 si es false pues sirve para el jugador 2
//Fin de Declaración de Variables

void cuerpoJuego(){
 
  //Se definen las posiciones de las raquetas así como su movimiento que tendran al momento de iniciar
  ppy= ppy+velPallay;
  ppx= ppx+velPallax;
  posh1= posh1+velPlayer1;
  posh2= posh2+velPlayer2;

  //Estos rectangulos sirven para usar como una especie de red en medio 
  fill(255);
  rect(width/2, 110 ,5,25);
  rect(width/2, 145 ,5,20);
  rect(width/2, 175 ,5,20);
  rect(width/2, 205 ,5,20);
  rect(width/2, 235 ,5,20);
  rect(width/2, 265 ,5,20);
  rect(width/2, 295 ,5,20);
  rect(width/2, 325 ,5,20);
  rect(width/2, 355 ,5,20);
  rect(width/2, 385 ,5,20);
  rect(width/2, 415 ,5,20);
  rect(width/2, 445 ,5,20);
  rect(width/2, 475 ,5,20);
  rect(width/2, 505 ,5,20);
  rect(width/2, 535 ,5,20);
  rect(width/2, 560 ,5,15);

  strokeWeight(0);
  println(scorer);
  stroke(0);
  fill(col1R, col1G, col1B, juego);
  rect(base/2, posh1, base, altura);

  strokeWeight(1);

  if (formaPlayer1==true) {
    stroke(col1R, col1G, col1B);
    fill(col1R, col1G, col1B);
  }

  if (formaPlayer1==false) {
    stroke(0);
    fill(0);
  }

  rect(base/2, posh1, base-6, altura-6);
  strokeWeight(0);
  stroke(col2R, col2G, col2B);
  fill(col2R, col2G, col2B);  
  rect(width-base/2, posh2, base, altura);

  strokeWeight(1);
  if (formaPlayer2==true) {
    stroke(col2R, col2G, col2B);
    fill(col2R, col2G, col2B);
    rect(width-base/2, posh2, base-6, altura-6);
  }

  if (formaPlayer2==false) {
    stroke(0);
    fill(0);
    rect(width-base/2, posh2, base-6, altura-6);
  }

  stroke(170);
  fill(255);  
  ellipse(ppx, ppy, dia, dia);

  stroke(200);
  fill(0, 85, 255);  
  rect(width/2, hbarra/2, width, hbarra);

  stroke(0, juego);
  fill(0, juego);
  rect(hbarra/2, hbarra/2, basepunt, basepunt, 7);
  rect(width-hbarra/2, hbarra/2, basepunt, basepunt, 7);

  //Puntuación del Jugador1
  textSize(50);
  fill(col1R, col1G, col1B, juego);
  text(puntoP1, 18, 45);

  //Puntuación del Jugador2
  fill(col2R, col2G, col2B, juego);
  text(puntoP2, width-(17+basepunt/2), 45);

  //Titulo
  textSize(50);
  fill(255);
  text("PING PONG", width/2-110, 50);

  albatro = loadImage("albatro.png");//Se crea la variable albatro para cargar la imagen PNG del mismo nombre
  image(albatro,605,1,60,60); //Se define tanto la ubicacion como el tamaño que tendra la imagen albatro
  image(albatro,135,1,60,60);

  //Limite Superior del Jugador1
  if (posh1<=hbarra+altura/2) {
    posh1=hbarra+altura/2;
  }
  //Limite Inferior del Jugador1
  if (posh1>=height-altura/2) {
    posh1=height-altura/2;
  }

  //Limite Superior del Jugador2
  if (posh2<=hbarra+altura/2) {
    posh2=hbarra+altura/2;
  }
  //Limite Inferior del Jugador2
  if (posh2>=height-altura/2) {
    posh2=height-altura/2;
  }

  //Limite Superior de la Bola
  if (ppy<=hbarra+dia/2) {
    ppy=hbarra+dia/2;
    velPallay=-velPallay;
  }

  //Limite Inferior de la Bola
  if (ppy>=height-dia/2) {
    ppy=height-dia/2;
    velPallay=-velPallay;
  }

  //En esta parte se declaran los diferentes velocidades y direccion que tendra la pelota en caso de pegar cierta area de la raqueta del Jugador 2
  if (ppx>=width-(5+base+(dia/2))) {

    if (ppy<=posh2+altura/2 && ppy>=posh2-altura/2) {
      velPallax=-10;

      //Diferente velocidades si pega mientras sube por parte del Jugador2
      if (keyCode==38) {

        if (ppy>=posh2+(3*rect8) && ppy<=posh2+(altura/2)) {
          velPallay=-2;
        } else if (ppy>=posh2+(2*rect8) && ppy<=posh2+(3*rect8)) {
          velPallay=-3;
        } else if (ppy>=posh2+(rect8) && ppy<=posh2+(2*rect8)) {
          velPallay=-5;
        } else if (ppy>=posh2 && ppy<=posh2+(rect8)) {
          velPallay=-6;
        } else if (ppy>=posh2-(rect8) && ppy<=posh2) {
          velPallay=-8;
        } else if (ppy>=posh2-(2*rect8) && ppy<=posh2-(rect8)) {
          velPallay=-9;
        } else if (ppy>=posh2-(3*rect8) && ppy<=posh2-(2*rect8)) {
          velPallay=-10;
        } else if (ppy>=posh2-(altura/2) && ppy<=posh2-(3*rect8)) {
          velPallay= -12;
        }
      } else if (keyCode==40) { //Diferente velocidades si pega mientras baja por parte del Jugador2

        if (ppy>=posh2+(3*rect8) && ppy<=posh2+(altura/2)) {
          velPallay=+12;
        } else if (ppy>=posh2+(2*rect8) && ppy<=posh2+(3*rect8)) {
          velPallay=+10;
        } else if (ppy>=posh2+(rect8) && ppy<=posh2+(2*rect8)) {
          velPallay=+9;
        } else if (ppy>=posh2 && ppy<=posh2+(rect8)) {
          velPallay=+8;
        } else if (ppy>=posh2-(rect8) && ppy<=posh2) {
          velPallay=+6;
        } else if (ppy>=posh2-(2*rect8) && ppy<=posh2-(rect8)) {
          velPallay=+5;
        } else if (ppy>=posh2-(3*rect8) && ppy<=posh2-(2*rect8)) {
          velPallay=+3;
        } else if (ppy>=posh2-(altura/2) && ppy<=posh2-(3*rect8)) {
          velPallay= +2;
        }
      }
    }
  }

  if (ppx<=5+base+(dia/2)) {

    if (ppy<=posh1+altura/2 && ppy>=posh1-altura/2) {
      velPallax=10;
      
      //Diferente velocidades si pega mientras sube por parte del Jugador1
      if (keyCode==87) {
        if (ppy>=posh1+(3*rect8) && ppy<=posh1+(altura/2)) {
          velPallay=-2;
        } else if (ppy>=posh1+(2*rect8) && ppy<=posh1+(3*rect8)) {
          velPallay=-3;
        } else if (ppy>=posh1+(rect8) && ppy<=posh1+(2*rect8)) {
          velPallay=-5;
        } else if (ppy>=posh1 && ppy<=posh1+(rect8)) {
          velPallay=-6;
        } else if (ppy>=posh1-(rect8) && ppy<=posh1) {
          velPallay=-8;
        } else if (ppy>=posh1-(2*rect8) && ppy<=posh1-(rect8)) {
          velPallay=-9;
        } else if (ppy>=posh1-(3*rect8) && ppy<=posh1-(2*rect8)) {
          velPallay=-10;
        } else if (ppy>=posh1-(altura/2) && ppy<=posh1-(3*rect8)) {
          velPallay= -12;
        }
      } else if (keyCode==83) { //Diferente velocidades si pega mientras baja por parte del Jugador1
        if (ppy>=posh1+(3*rect8) && ppy<=posh1+(altura/2)) {
          velPallay=12;
        } else if (ppy>=posh1+(2*rect8) && ppy<=posh1+(3*rect8)) {
          velPallay=12;
        } else if (ppy>=posh1+(rect8) && ppy<=posh1+(2*rect8)) {
          velPallay=9;
        } else if (ppy>=posh1 && ppy<=posh1+(rect8)) {
          velPallay=8;
        } else if (ppy>=posh1-(rect8) && ppy<=posh1) {
          velPallay=6;
        } else if (ppy>=posh1-(2*rect8) && ppy<=posh1-(rect8)) {
          velPallay=5;
        } else if (ppy>=posh1-(3*rect8) && ppy<=posh1-(2*rect8)) {
          velPallay=3;
        } else if (ppy>=posh1-(altura/2) && ppy<=posh1-(3*rect8)) {
          velPallay=2;
        }
      }
    }
  }

  //La bola supera los bordes y es punto para el Jugador1
  if (ppx>=width+dia/2) {
    velPallax=0;
    ppx=width/2;
    ppy=hbarra+hcampo/2;
    puntoP1++;
    scorer=true;
  }
  
  //La bola supera los bordes y es punto para el Jugador2
    if (ppx<=-dia/2) {
    velPallax=0;
    ppx=width/2;
    ppy=hbarra+hcampo/2;
    puntoP2++;
    scorer=false;
  }
  
  //En caso de que la pelota no se mueve se reiniciara todo de nuevo como si fuera un punto nuevo
  if (velPallax==0) {
    velPallay=0;
    posh1=hbarra+hcampo/2;
    posh2=hbarra+hcampo/2;
    textSize(25);
    fill(200, juego);
    text("Presiona SPACE para iniciar", width/2-140, height-10);

    if (keyCode==32) { //Si se presiona espacio se inicia el juego y las Raquetas comenzaran a moverse

      if (puntoP1+puntoP2==0) {
        if (r<50) {
          velPallax=5;
        } else {
          velPallax=-5;
        }
      } else {
        if (scorer==true) { 
          velPallax=5;
        } else {  
          velPallax=-5;
        }
      }
    }
  }

  //Si el marcador del J1 llega a 5 entonces gana y victoryP1 sera true
  if (puntoP1==5) {
    juego=0;
    victoryP1=true;
  }

  //Si el marcador del J2 llega a 5 entonces gana y victoryP1 sera false
  if (puntoP2==5) {
    juego=0;
    victoryP1=false;
  }
}
