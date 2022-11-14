//Dentro de este metodo se aplican las velocidades de las raquetas es decir los movimientos
void keyPressed() {

  //Se crean las velocidades es decir que tanto se incrementan
  posh1= posh1+velPlayer1; //Posicion del Jugador 1
  posh2= posh2+velPlayer2; //Posicion del Jugador 2

  switch(keyCode) { 
  case 87: //En caso de que se oprima la tecla W avanzara hacia arriba
    velPlayer1=-5;
    break;

  case 83:
    velPlayer1=5; //En caso de que se oprima la tecla S avanzara hacia abajo
    break;

  case 38: //En caso de que se oprima la tecla de Flecha Superior avanzara hacia arriba
    velPlayer2=-5;
    break;

  case 40: //En caso de que se oprima la tecla de Flecha Inferior avanzara hacia arriba
    velPlayer2=5;
    break;
  }
}

void keyReleased() {

   if (keyCode==87) {
    if (velPlayer1==5){
      velPlayer1=5;
    }
    if (velPlayer1==-5) {
      velPlayer1=0;
    }
  }

  if (keyCode==83) {
    if (velPlayer1==5) {
      velPlayer1=0;
    }
    
    if (velPlayer1==-5){
      velPlayer1=-5;
    }
  }

  if (keyCode==38) {
    if (velPlayer2==5) {
      velPlayer2=5;
    }
    if (velPlayer2==-5){
      velPlayer2=0;
    }
  }

  if (keyCode==40) {
    if (velPlayer2==5){
      velPlayer2=0;
    }
    if (velPlayer2==-5) {
      velPlayer2=-5;
    }
  }
}
