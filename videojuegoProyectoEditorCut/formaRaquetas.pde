//Inicio de Declaración de Variables
PImage titleForm; //Variable para poder llamar una imagen

int bordeRect1=50, bordeRect2=50,bordeRect3=50,bordeRect4=50; //Estas son variables para definir el color de  los rectangulos que contienen el estilo, estos actuan como borde así como el relleno de los estilos preeliminares
int formarect1=200, formarect2=200, formarect3=200, formarect4=200; //Estan son variables para definir el color de los estilos de los rectangulos
int baseforma=120; //Esta variable define las medidas de altura y ancho de los rectangulos que contienen los estilos de raquetas
int colOK1=40, colOK2=40; //Estas variables sirven para definir los colores iniciales de los botones Ok tanto para el Jugador 1 y 2
int baseOK=80,alturaOK=40; //Variables para definir el largo y ancho del boton Ok para el Jugador 1
int baseOK2=80,alturaOK2=40; //Variables para definir el largo y ancho del boton Ok para el Jugador 2
int Okforma1=0,Okforma2=0; //Son variables para el color de los mensajes de que el jugador ya escogio

float base=10;//Variable para la base de los rectangulos de los estilos
//Fin de Declaración de Variables

void formaRaquetas(){ //Este es el metodo de formaRaquetas, el cual sirve para seleccionar 2 posibles estilos de la raqueta puede ser solido o bien puro borde sin relleno

  background(0); //Fondo de color negro

  titleForm = loadImage("titleForm.png"); //Se crea la variable titleForm para cargar la imagen PNG del mismo nombre
  image(titleForm,215,10,405,60); //Se define tanto la ubicacion como el tamaño que tendra la imagen titleForm
  
  //Se crea una linea que sera como una división, se le dan los atributos como el color, grosor,ubicacion y tamaño
  stroke(200);
  strokeWeight(2);
  line(width/2, 100, width/2, height-100);
  
  //Se crean los rectangulos que contendran los estilos de las raquetas, donde se define su color, posición, tamaño así como su borde
  fill(bordeRect1); 
  rect(width/4, (height-100)/3, baseforma, baseforma);
  fill(bordeRect2); 
  rect(width/4, ((height-100)/3)*2, baseforma, baseforma);
  fill(bordeRect3); 
  rect((width/4)*3, (height-100)/3, baseforma, baseforma);
  fill(bordeRect4); 
  rect((width/4)*3, ((height-100)/3)*2, baseforma, baseforma);
  
  strokeWeight(1);
  stroke(50);
  
  //Se crean ya en si los estilos de los rectangulos 2 estilos diferentes en cada lado
  
  //Esto hace referencia a que sera una raqueta solida, es decir que contendra color y relleno
  fill(formarect1);
  rect(width/4, (height-100)/3, base, altura);
  
  //Esto hace referencia a que sera una raqueta sin relleno es decir que solo contendra borden y dentro de el un pequeño rectangulo que tendra tambien puro borde
  fill(formarect2);
  rect(width/4, ((height-100)/3)*2, base, altura);
  fill(bordeRect2);
  rect(width/4, ((height-100)/3)*2, base-6, altura-6);
  
  //Esto hace referencia a que sera una raqueta solida, es decir que contendra color y relleno
  fill(formarect3);
  rect((width/4)*3, (height-100)/3, base, altura);
  
  //Esto hace referencia a que sera una raqueta sin relleno es decir que solo contendra borden y dentro de el un pequeño rectangulo que tendra tambien puro borde
  fill(formarect4);
  rect((width/4)*3, ((height-100)/3)*2, base, altura);
  fill(bordeRect4);
  rect((width/4)*3, ((height-100)/3)*2, base-6, altura-6);
  
  //En esta parte se crearan los botones de Ok tanto para el Jugador 1 y 2

  fill(colOK1);
  stroke(0);

  rect(200, height-100, baseOK, alturaOK, 10);
  textSize(30);
  fill(0);
  text("OK", 177, height-90);
  
  fill(colOK2);
  rect(width-200, height-100, baseOK, alturaOK, 10);
  fill(0);
  text("OK", width-223, height-90);
  
  //Aqui se crean los mensajes de confirmacion tanto del Jugador 1 y 2
  textSize(25);
  strokeWeight(1);
  stroke(Okforma1);
  fill(Okforma1);
  text("Jugador 1 READY", 110, height-35); //Mensaje de Jugador1 Ready
  stroke(Okforma1);
  fill(Okforma2);
  text("Jugador 2 READY", width-290, height-35); //Mensaje de Jugador2 Ready
  
  if (bordeRect1+bordeRect2==250) { //En caso de que la suma de bordeRect1 y bordeRect2 sea a 250
    colOK1=200; //Esto hara que el boton de Ok del Jugador1 cambie de color
  }
  if (bordeRect3+bordeRect4==250) { //En caso de que la suma de bordeRect3 y bordeRect4 sea a 250
    colOK2=200; //Esto hara que el boton de Ok del Jugador2 cambie de color
  }

  if (Okforma1==200){ //En caso de que Okforma1 sea igual a 200
    colOK1=40; //Esto hara que el boton de Ok del Jugador1 cambie de color
  }
  
  if (Okforma2==200){ //En caso de que Okforma1 sea igual a 200
    colOK2=40; //Esto hara que el boton de Ok del Jugador2 cambie de color
  }

  if (Okforma1+Okforma2==400) { //En caso de que la suma de Okforma1 y Okforma2 sea igual a 400
    formaRaq=0; //formaRaq tendra el valor de 0 por lo que ya no se ocupa
    colorRaq=255; //colorRaq tendra el valor de 255 por lo que se llamara al metodo colorRaquetas()
  }
}
