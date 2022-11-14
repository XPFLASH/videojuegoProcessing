//Este es el metodo para desplegar la pantalla final, es decir la pantalla de resultado
void pantallaFinal() {
  
  //Esta sección es en caso de que el Jugador 1 Gana
  if (victoryP1==true) {//En caso de que VictoryP1 sea igual a true, se despliega un texto diciendo que el Jugador 1 gana
    velPallax=0;
    textSize(80);
    fill(col1R, col1G, col1B);
    text("JUGADOR 1 WIN", width/2-260, height/2); //Jugador 1 Gana

    //Declaramos unas opciones para Reiniciar el Juego así como el nombre del titulo    
    textSize(30);//Presiona R para reiniciar el juego   
    fill(200);
    text("Presiona R para reiniciar el juego", width/2-205, height-160); //Presiona R para reiniciar el juego  
    text("Presiona E para ir al Estilo de las raquetas", width/2-250, height-130); //Presiona E para ir al estilo

    fill(0, 85, 255);    
    rect(width/2, hbarra/2, width, hbarra);
    textSize(50);
    fill(255);
    text("PING PONG", width/2-110, 50); //Titulo del juego

    albatro = loadImage("albatro.png"); //Se crea la variable albatro para cargar la imagen PNG del mismo nombre
    image(albatro,605,1,60,60); //Se define tanto la ubicacion como el tamaño que tendra la imagen albatro
    image(albatro,135,1,60,60);

    if (keyCode==82) { //En caso de que se oprime la tecla R
      velPallax=0; //Se reinicia todo el juego
      puntoP1=0; //Con los marcadores en 0
      puntoP2=0;
      juego=255;
    }
    if (keyCode==69) { //En caso de que se oprima la tecla E
      juego=0; //Se mandara directamente hasta formaRaquetas()
      formaRaq=255; //Se reinicia todo hasta llegar a las instancia de la selección de materias
      
      //Por lo que las variables involucradas vuelven a su forma original esto implica la forma, colores y el Juego
      scorer=true;
      formaPlayer1=true;
      formaPlayer2=true;

      victoryP1=true;

      col1R=50;
      col1G=50;
      col1B=50;
      col2R=50;
      col2G=50;
      col2B=50;

      bordeRect1=50;
      bordeRect2=50;
      bordeRect3=50;
      bordeRect4=50;

      formarect1=200;
      formarect2=200;
      formarect3=200;
      formarect4=200;

      colOK1=40;
      colOK2=40;
      colOK1B=40;
      colOK2B=40;

      Okforma1=0;
      Okforma2=0;

      Okcolor1=0;
      Okcolor2=0;

      puntoP1=0;
      puntoP2=0;
      
      rect1n1=0;
      rect1n2=0;
      rect1n3=0;
      rect1n4=0;
      rect1n5=0;
      rect1n6=0;
      rect1n7=0;
      rect1n8=0;
      rect1n9=0;
      rect1n10=0;

      rect2n1=0;
      rect2n2=0;
      rect2n3=0;
      rect2n4=0;
      rect2n5=0;
      rect2n6=0;
      rect2n7=0;
      rect2n8=0;
      rect2n9=0;
      rect2n10=0;
    }
  }

  //Esta sección es en caso de que el Jugador 2 Gana
  if (victoryP1==false) { //En caso de que VictoryP1 sea igual a false, se despliega un texto diciendo que el Jugador 2 gana
    velPallax=0;
    //player2 win
    textSize(80);
    fill(col2R, col2G, col2B);
    text("JUGADOR 2 WIN", width/2-260, height/2); //Jugador 1 Gana

    //Declaramos unas opciones para Reiniciar el Juego así como el nombre del titulo    
    textSize(30);//Presiona R para reiniciar el juego   
    fill(200);
    text("Presiona R para reiniciar el juego", width/2-205, height-160); //Presiona R para reiniciar el juego  
    text("Presiona E para ir al Estilo de las raquetas", width/2-250, height-130); //Presiona E para ir al estilo

    fill(0, 85, 255);    
    rect(width/2, hbarra/2, width, hbarra);
    textSize(50);
    fill(255);
    text("PING PONG", width/2-110, 50); //Titulo del juego

    albatro = loadImage("albatro.png"); //Se crea la variable albatro para cargar la imagen PNG del mismo nombre
    image(albatro,605,1,60,60); //Se define tanto la ubicacion como el tamaño que tendra la imagen albatro
    image(albatro,135,1,60,60);

    if (keyCode==82) { //En caso de que se oprime la tecla R
      velPallax=0; //Se reinicia todo el juego
      puntoP1=0; //Con los marcadores en 0
      puntoP2=0;
      juego=255;
    }
    if (keyCode==69) { //En caso de que se oprima la tecla E
      juego=0; //Se mandara directamente hasta formaRaquetas()
      formaRaq=255; //Se reinicia todo hasta llegar a las instancia de la selección de materias
      
      //Por lo que las variables involucradas vuelven a su forma original esto implica la forma, colores y el Juego
      scorer=true;
      formaPlayer1=true;
      formaPlayer2=true;

      victoryP1=true;

      col1R=50;
      col1G=50;
      col1B=50;
      col2R=50;
      col2G=50;
      col2B=50;

      bordeRect1=50;
      bordeRect2=50;
      bordeRect3=50;
      bordeRect4=50;

      formarect1=200;
      formarect2=200;
      formarect3=200;
      formarect4=200;

      colOK1=40;
      colOK2=40;
      colOK1B=40;
      colOK2B=40;

      Okforma1=0;
      Okforma2=0;

      Okcolor1=0;
      Okcolor2=0;

      puntoP1=0;
      puntoP2=0;
      
      rect1n1=0;
      rect1n2=0;
      rect1n3=0;
      rect1n4=0;
      rect1n5=0;
      rect1n6=0;
      rect1n7=0;
      rect1n8=0;
      rect1n9=0;
      rect1n10=0;

      rect2n1=0;
      rect2n2=0;
      rect2n3=0;
      rect2n4=0;
      rect2n5=0;
      rect2n6=0;
      rect2n7=0;
      rect2n8=0;
      rect2n9=0;
      rect2n10=0;
    }
  }
}
