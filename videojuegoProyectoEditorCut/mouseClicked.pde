void mouseClicked() {
  
  //En esta seccion son los eventos para el metodo formaRaquetas(), en donde si es igual a 255 pasa lo siguiente
  if (formaRaq==255) {
    //Este es un if para la selección del 1er estilo del Jugador1 donde esta limitado para seleccionar esa zona en especifica
    if (mouseX>=  width/4-baseforma/2 && //En caso de que se cumplan ciertas condiciones las variables tendran ciertos valores que hacen que cumplan las condiciones de los ifs de sus metodos 
      mouseX<=  width/4+baseforma/2 && //Es decir que esto hace que se pueda seleccionar los estilos
      mouseY>=(height-100)/3-baseforma/2 &&
      mouseY<=(height-100)/3+baseforma/2) {
      bordeRect1=200;
      bordeRect2=50;
      formarect1=50;
      formarect2=200;
      formaPlayer1=true;
    }
    //Este es un if para la selección del 1er estilo del Jugador2 donde esta limitado para seleccionar esa zona en especifica
    if (mouseX>=  width/4-baseforma/2 && //En caso de que se cumplan ciertas condiciones las variables tendran ciertos valores que hacen que cumplan las condiciones de los ifs de sus metodos 
      mouseX<=  width/4+baseforma/2 &&  //Es decir que esto hace que se pueda seleccionar los estilos
      mouseY>=((height-100)/3)*2-baseforma/2 &&
      mouseY<=((height-100)/3)*2+baseforma/2) {
      bordeRect2=200;
      bordeRect1=50;
      formarect2=50;
      formarect1=200;
      formaPlayer1=false;
    }
    //Este es un if para la selección del 2do estilo del Jugador2 donde esta limitado para seleccionar esa zona en especifica
    if (mouseX>=  (width/4)*3-baseforma/2 && //En caso de que se cumplan ciertas condiciones las variables tendran ciertos valores que hacen que cumplan las condiciones de los ifs de sus metodos 
      mouseX<=  (width/4)*3+baseforma/2 && //Es decir que esto hace que se pueda seleccionar los estilos
      mouseY>=(height-100)/3-baseforma/2 &&
      mouseY<=(height-100)/3+baseforma/2) {
      bordeRect3=200;
      bordeRect4=50;
      formarect3=50;
      formarect4=200;
      formaPlayer2=true;
    }
    //Este es un if para la selección del 2do estilo del Jugador2 donde esta limitado para seleccionar esa zona en especifica
    if (mouseX>=  (width/4)*3-baseforma/2 && //En caso de que se cumplan ciertas condiciones las variables tendran ciertos valores que hacen que cumplan las condiciones de los ifs de sus metodos 
      mouseX<=  (width/4)*3+baseforma/2 &&  //Es decir que esto hace que se pueda seleccionar los estilos
      mouseY>=((height-100)/3)*2-baseforma/2 &&
      mouseY<=((height-100)/3)*2+baseforma/2) {
      bordeRect4=200;
      bordeRect3=50;
      formarect4=50;
      formarect3=200;
      formaPlayer2=false;
    }

    //Estos son los if al momento de confirmar la seleccion de los botones Ok de los jugadores 1 y2
    //En caso de que el color del boton Ok sea igual a 200 y se hace click en cierto boton, las vaiables tendran cierto valor 
    if (colOK1==200) { //El cual hace que se pueda cumplir las condiciones para confirmar la seleccion
      if (mouseX>= 200-baseOK/2 &&
        mouseX<= 200+baseOK/2 &&
        mouseY>=hOK-alturaOK/2 &&
        mouseY<=hOK+alturaOK/2) {
        Okforma1=200;
        colOK1=40;
      }
    }
    //En caso de que el color del boton Ok sea igual a 200 y se hace click en cierto boton, las vaiables tendran cierto valor 
    if (colOK2==200) {  //El cual hace que se pueda cumplir las condiciones para confirmar la seleccion
      if (mouseX>= (width-200)-baseOK/2 &&
        mouseX<= (width-100)+baseOK/2 &&
        mouseY>=hOK-alturaOK/2 &&
        mouseY<=hOK+alturaOK/2) {
        Okforma2=200;
        colOK2=40;
      }
    }
  }
  
  //Ya dentro de este parte se hacen los eventos para poder seleccionar los colores para la raqueta en el metodo colorRaquetas()
  if (colorRaq==255) { //En caso de que se llame al metodo de colorRaquetas() se cumplira la seleccion de colores

    //Prácticamente aqui es la selección para un color en este caso el color 1 del Jugador1
    //Donde cada cuadrito es un color disponible a elegir
    //A ese cuadrado se le da un valor y ya con ellos se cumple su condición es decir su color a cumplir con el click
    if (mouseX>= colum1A-basecolore/2 &&
      mouseX<= colum1A+basecolore/2 &&
      mouseY>= porcion -basecolore/2 &&
      mouseY<= porcion+basecolore/2) {

      rect1n1=200;
      rect1n2=0;
      rect1n3=0;
      rect1n4=0;
      rect1n5=0;
      rect1n6=0;
      rect1n7=0;
      rect1n8=0;
      rect1n9=0;
      rect1n10=0;

      col1R=255;
      col1G=255;
      col1B=255;
    }

     //Prácticamente aqui es la selección para un color en este caso el color 2 del Jugador1
    //Donde cada cuadritos es un color disponible a elegir

    if (mouseX>= colum1A-basecolore/2 &&
      mouseX<= colum1A+basecolore/2 &&
      mouseY>= porcion*2 -basecolore/2 &&
      mouseY<= porcion*2+basecolore/2) {

      rect1n1=0;
      rect1n2=200;
      rect1n3=0;
      rect1n4=0;
      rect1n5=0;
      rect1n6=0;
      rect1n7=0;
      rect1n8=0;
      rect1n9=0;
      rect1n10=0;

      col1R=246;
      col1G=255;
      col1B=0;
    }

     //Prácticamente aqui es la selección para un color en este caso el color 3 del Jugador1
    //Donde cada cuadritos es un color disponible a elegir

    if (mouseX>= colum1A-basecolore/2 &&
      mouseX<= colum1A+basecolore/2 &&
      mouseY>= porcion*3 -basecolore/2 &&
      mouseY<= porcion*3 +basecolore/2) {

      rect1n1=0;
      rect1n2=0;
      rect1n3=200;
      rect1n4=0;
      rect1n5=0;
      rect1n6=0;
      rect1n7=0;
      rect1n8=0;
      rect1n9=0;
      rect1n10=0;

      col1R=255;
      col1G=213;
      col1B=0;
    }

     //Prácticamente aqui es la selección para un color en este caso el color 4 del Jugador1
    //Donde cada cuadritos es un color disponible a elegir

    if (mouseX>= colum1A-basecolore/2 &&
      mouseX<= colum1A+basecolore/2 &&
      mouseY>= porcion*4 -basecolore/2 &&
      mouseY<= porcion*4 +basecolore/2) {

      rect1n1=0;
      rect1n2=0;
      rect1n3=0;
      rect1n4=200;
      rect1n5=0;
      rect1n6=0;
      rect1n7=0;
      rect1n8=0;
      rect1n9=0;
      rect1n10=0;

      col1R=255;
      col1G=115;
      col1B=0;
    }

     //Prácticamente aqui es la selección para un color en este caso el color 5 del Jugador1
    //Donde cada cuadritos es un color disponible a elegir

    if (mouseX>= colum1A-basecolore/2 &&
      mouseX<= colum1A+basecolore/2 &&
      mouseY>= porcion*5 -basecolore/2 &&
      mouseY<= porcion*5 +basecolore/2) {

      rect1n1=0;
      rect1n2=0;
      rect1n3=0;
      rect1n4=0;
      rect1n5=200;
      rect1n6=0;
      rect1n7=0;
      rect1n8=0;
      rect1n9=0;
      rect1n10=0;

      col1R=255;
      col1G=0;
      col1B=0;
    }

     //Prácticamente aqui es la selección para un color en este caso el color 6 del Jugador1
    //Donde cada cuadritos es un color disponible a elegir

    if (mouseX>= colum1B-basecolore/2 &&
      mouseX<= colum1B+basecolore/2 &&
      mouseY>= porcion -basecolore/2 &&
      mouseY<= porcion+basecolore/2) {

      rect1n1=0;
      rect1n2=0;
      rect1n3=0;
      rect1n4=0;
      rect1n5=0;
      rect1n6=200;
      rect1n7=0;
      rect1n8=0;
      rect1n9=0;
      rect1n10=0;

      col1R=245;
      col1G=173;
      col1B=238;
    }

     //Prácticamente aqui es la selección para un color en este caso el color 7 del Jugador1
    //Donde cada cuadritos es un color disponible a elegir

    if (mouseX>= colum1B-basecolore/2 &&
      mouseX<= colum1B+basecolore/2 &&
      mouseY>= porcion*2 -basecolore/2 &&
      mouseY<= porcion*2+basecolore/2) {

      rect1n1=0;
      rect1n2=0;
      rect1n3=0;
      rect1n4=0;
      rect1n5=0;
      rect1n6=0;
      rect1n7=200;
      rect1n8=0;
      rect1n9=0;
      rect1n10=0;

      col1R=250;
      col1G=0;
      col1B=255;
    }

     //Prácticamente aqui es la selección para un color en este caso el color 8 del Jugador1
    //Donde cada cuadritos es un color disponible a elegir

    if (mouseX>= colum1B-basecolore/2 &&
      mouseX<= colum1B+basecolore/2 &&
      mouseY>= porcion*3 -basecolore/2 &&
      mouseY<= porcion*3 +basecolore/2) {

      rect1n1=0;
      rect1n2=0;
      rect1n3=0;
      rect1n4=0;
      rect1n5=0;
      rect1n6=0;
      rect1n7=0;
      rect1n8=200;
      rect1n9=0;
      rect1n10=0;

      col1R=0;
      col1G=0;
      col1B=255;
    }

     //Prácticamente aqui es la selección para un color en este caso el color 9 del Jugador1
    //Donde cada cuadritos es un color disponible a elegir

    if (mouseX>= colum1B-basecolore/2 &&
      mouseX<= colum1B+basecolore/2 &&
      mouseY>= porcion*4 -basecolore/2 &&
      mouseY<= porcion*4 +basecolore/2) {

      rect1n1=0;
      rect1n2=0;
      rect1n3=0;
      rect1n4=0;
      rect1n5=0;
      rect1n6=0;
      rect1n7=0;
      rect1n8=0;
      rect1n9=200;
      rect1n10=0;

      col1R=17;
      col1G=247;
      col1B=234;
    }

     //Prácticamente aqui es la selección para un color en este caso el color 10 del Jugador1
    //Donde cada cuadritos es un color disponible a elegir

    if (mouseX>= colum1B-basecolore/2 &&
      mouseX<= colum1B+basecolore/2 &&
      mouseY>= porcion*5 -basecolore/2 &&
      mouseY<= porcion*5 +basecolore/2) {

      rect1n1=0;
      rect1n2=0;
      rect1n3=0;
      rect1n4=0;
      rect1n5=0;
      rect1n6=0;
      rect1n7=0;
      rect1n8=0;
      rect1n9=0;
      rect1n10=200;

      col1R=0;
      col1G=255;
      col1B=0;
    }

    //Aho es para la selección de colores del Jugador
    //Prácticamente aqui es la selección para un color en este caso el color 1 del Jugador2
    //Donde cada cuadritos es un color disponible a elegir

    if (mouseX>= colum2A-basecolore/2 &&
      mouseX<= colum2A+basecolore/2 &&
      mouseY>= porcion -basecolore/2 &&
      mouseY<= porcion+basecolore/2) {

      rect2n1=200;
      rect2n2=0;
      rect2n3=0;
      rect2n4=0;
      rect2n5=0;
      rect2n6=0;
      rect2n7=0;
      rect2n8=0;
      rect2n9=0;
      rect2n10=0;

      col2R=255;
      col2G=255;
      col2B=255;
    }

    //Prácticamente aqui es la selección para un color en este caso el color 2 del Jugador2
    //Donde cada cuadritos es un color disponible a elegir

    if (mouseX>= colum2A-basecolore/2 &&
      mouseX<= colum2A+basecolore/2 &&
      mouseY>= porcion*2 -basecolore/2 &&
      mouseY<= porcion*2+basecolore/2) {

      rect2n1=0;
      rect2n2=200;
      rect2n3=0;
      rect2n4=0;
      rect2n5=0;
      rect2n6=0;
      rect2n7=0;
      rect2n8=0;
      rect2n9=0;
      rect2n10=0;

      col2R=246;
      col2G=255;
      col2B=0;
    }

     //Prácticamente aqui es la selección para un color en este caso el color 3 del Jugador2
    //Donde cada cuadritos es un color disponible a elegir

    if (mouseX>= colum2A-basecolore/2 &&
      mouseX<= colum2A+basecolore/2 &&
      mouseY>= porcion*3 -basecolore/2 &&
      mouseY<= porcion*3 +basecolore/2) {

      rect2n1=0;
      rect2n2=0;
      rect2n3=200;
      rect2n4=0;
      rect2n5=0;
      rect2n6=0;
      rect2n7=0;
      rect2n8=0;
      rect2n9=0;
      rect2n10=0;

      col2R=255;
      col2G=213;
      col2B=0;
    }

     //Prácticamente aqui es la selección para un color en este caso el color 4 del Jugador2
    //Donde cada cuadritos es un color disponible a elegir

    if (mouseX>= colum2A-basecolore/2 &&
      mouseX<= colum2A+basecolore/2 &&
      mouseY>= porcion*4 -basecolore/2 &&
      mouseY<= porcion*4 +basecolore/2) {

      rect2n1=0;
      rect2n2=0;
      rect2n3=0;
      rect2n4=200;
      rect2n5=0;
      rect2n6=0;
      rect2n7=0;
      rect2n8=0;
      rect2n9=0;
      rect2n10=0;

      col2R=255;
      col2G=115;
      col2B=0;
    }

     //Prácticamente aqui es la selección para un color en este caso el color 5 del Jugador2
    //Donde cada cuadritos es un color disponible a elegir

    if (mouseX>= colum2A-basecolore/2 &&
      mouseX<= colum2A+basecolore/2 &&
      mouseY>= porcion*5 -basecolore/2 &&
      mouseY<= porcion*5 +basecolore/2) {

      rect2n1=0;
      rect2n2=0;
      rect2n3=0;
      rect2n4=0;
      rect2n5=200;
      rect2n6=0;
      rect2n7=0;
      rect2n8=0;
      rect2n9=0;
      rect2n10=0;

      col2R=255;
      col2G=0;
      col2B=0;
    }

     //Prácticamente aqui es la selección para un color en este caso el color 6 del Jugador2
    //Donde cada cuadritos es un color disponible a elegir

    if (mouseX>= colum2B-basecolore/2 &&
      mouseX<= colum2B+basecolore/2 &&
      mouseY>= porcion -basecolore/2 &&
      mouseY<= porcion+basecolore/2) {

      rect2n1=0;
      rect2n2=0;
      rect2n3=0;
      rect2n4=0;
      rect2n5=0;
      rect2n6=200;
      rect2n7=0;
      rect2n8=0;
      rect2n9=0;
      rect2n10=0;

      col2R=245;
      col2G=173;
      col2B=238;
    }

     //Prácticamente aqui es la selección para un color en este caso el color 7 del Jugador2
    //Donde cada cuadritos es un color disponible a elegir

    if (mouseX>= colum2B-basecolore/2 &&
      mouseX<= colum2B+basecolore/2 &&
      mouseY>= porcion*2 -basecolore/2 &&
      mouseY<= porcion*2+basecolore/2) {

      rect2n1=0;
      rect2n2=0;
      rect2n3=0;
      rect2n4=0;
      rect2n5=0;
      rect2n6=0;
      rect2n7=200;
      rect2n8=0;
      rect2n9=0;
      rect2n10=0;

      col2R=250;
      col2G=0;
      col2B=255;
    }

     //Prácticamente aqui es la selección para un color en este caso el color 8 del Jugador2
    //Donde cada cuadritos es un color disponible a elegir

    if (mouseX>= colum2B-basecolore/2 &&
      mouseX<= colum2B+basecolore/2 &&
      mouseY>= porcion*3 -basecolore/2 &&
      mouseY<= porcion*3 +basecolore/2) {

      rect2n1=0;
      rect2n2=0;
      rect2n3=0;
      rect2n4=0;
      rect2n5=0;
      rect2n6=0;
      rect2n7=0;
      rect2n8=200;
      rect2n9=0;
      rect2n10=0;

      col2R=0;
      col2G=0;
      col2B=255;
    }

    //Prácticamente aqui es la selección para un color en este caso el color 9 del Jugador2
    //Donde cada cuadritos es un color disponible a elegir

    if (mouseX>= colum2B-basecolore/2 &&
      mouseX<= colum2B+basecolore/2 &&
      mouseY>= porcion*4 -basecolore/2 &&
      mouseY<= porcion*4 +basecolore/2) {

      rect2n1=0;
      rect2n2=0;
      rect2n3=0;
      rect2n4=0;
      rect2n5=0;
      rect2n6=0;
      rect2n7=0;
      rect2n8=0;
      rect2n9=200;
      rect2n10=0;

      col2R=17;
      col2G=247;
      col2B=234;
    }

     //Prácticamente aqui es la selección para un color en este caso el color 10 del Jugador2
    //Donde cada cuadritos es un color disponible a elegir

    if (mouseX>= colum2B-basecolore/2 &&
      mouseX<= colum2B+basecolore/2 &&
      mouseY>= porcion*5 -basecolore/2 &&
      mouseY<= porcion*5 +basecolore/2) {

      rect2n1=0;
      rect2n2=0;
      rect2n3=0;
      rect2n4=0;
      rect2n5=0;
      rect2n6=0;
      rect2n7=0;
      rect2n8=0;
      rect2n9=0;
      rect2n10=200;

      col2R=0;
      col2G=255;
      col2B=0;
    }

    //Ya esta sección son los eventos para hacer los click de los botones de Ok para la selección de colores del Jugador 1 y Jugador 2
    //Aqui se hace los eventos para el Jugador 1
    if (colOK1B==200) { //Donde si el color del boton es igual a 200
      if (mouseX>= 180-baseOK/2 && //Asi como cumplir con la zona seleccionada 
        mouseX<= 180+baseOK/2 && //Los colores del boton cambia para confirmar la selección
        mouseY>=hOK-alturaOK/2 &&
        mouseY<=hOK+alturaOK/2) {
        Okcolor1=200; //Practicamente con este valor se puede cumplir la condición para el cambio de color al momento de hacer el click
        colOK1B=40;
      }
    }
    //Aqui se hace los eventos para el Jugador 1
    if (colOK2B==200) { //Donde si el color del boton es igual a 200
      if (mouseX>= (width-180)-baseOK/2 && //Asi como cumplir con la zona seleccionada
        mouseX<= (width-180)+baseOK/2 && //Los colores del boton cambia para confirmar la selección
        mouseY>=hOK-alturaOK/2 &&
        mouseY<=hOK+alturaOK/2) {
        Okcolor2=200; //Practicamente con este valor se puede cumplir la condición para el cambio de color al momento de hacer el click
        colOK2B=40;
      }
    }
  }
}
