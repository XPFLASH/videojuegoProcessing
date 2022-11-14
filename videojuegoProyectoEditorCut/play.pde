//Inicio de Declaración de Variables

int juego=0,formaRaq=255,colorRaq=0,Num=0; //Se declaran estas variables, las cuales sirven para cambiar el estado ya del juego es decir el proceso de seleccion,color y juego

//Fin de Declaración de Variables

void play(){//Este es el metodo play
  
  background(0);//Fondo de color Negro
  
  if (formaRaq==255){ //En caso de que formaRaq sea igual a 255
    formaRaquetas(); //Se mandara a llamar a formaRaqueta(), la cual se encarga de definir el estilo de la raqueta;
  }
   
  if (colorRaq==255) { //En caso de que colorRaq sea igual a 255
    colorRaquetas(); //Se mandara a llamar a colorRaqueta(), la cual se encarga de definir los colores de la raqueta
  }
  
  if (juego==255) { //En caso de que juego sea igual a 255
    cuerpoJuego(); //Se mandara a llamar a cuerpoJuego(), el cual es el metodo que llama ya en si al juego con sus metodos anteriores
  }
  
  if (juego+colorRaq+formaRaq+Num==0){ //En caso de que las ultimas variables mas la de Num sea igual a 0
     pantallaFinal(); //Se llamara a pantallaFinal, la cual despliega el resultado final del juego
    }
}

void clearBackground(){ //Este es el metodo clearBackground()
  
  //Esto sirve nomas para tener limpia la pantalla y así no tener todo junto
  fill(255);
  rect(0,0,width,height);
  
}
