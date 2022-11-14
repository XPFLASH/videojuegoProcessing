PImage titleReglas, reglas, buttonBack; //Variables para poder llamar a imagenes

void reglas(){//Este es el metodo de reglas
  
  background(0);//Fondo de color negro
  
  buttonBack = loadImage("buttonBack.png"); //Se crea la variable buttonBack para cargar la imagen PNG del mismo nombre
  image(buttonBack,0,0,75,75); //Se define tanto la ubicacion como el tamaño que tendra la imagen buttonBack
  
  reglas = loadImage("reglas.png"); //Se crea la variable reglas para cargar la imagen PNG del mismo nombre
  image(reglas,260,30,300,80); //Se define tanto la ubicacion como el tamaño que tendra la imagen reglas

  titleReglas = loadImage("titleReglas.png"); //Se crea la variable titleReglas para cargar la imagen PNG del mismo nombre
  image(titleReglas,50,100,700,500); //Se define tanto la ubicacion como el tamaño que tendra la imagen titleReglas

  if(mouseX>0 && mouseX<75 && mouseY>0 && mouseY<75 && mousePressed == true){//Se crea un if, el cual nos sirve para limitar una zona así cuando la presion del mouse sea verdadero
    gameState = "MENU"; //La variable gameState tendra el valor de "MENU" por lo cual se llamara al metodo de menu(), esto haciendo un efecto de un boton que regresa
  }
}
