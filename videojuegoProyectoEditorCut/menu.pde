PImage titleMenu, titlePlay, titleHowToPlay, barra, titleBall; //Variables para poder llamar a imagenes

void menu(){ //Metodo del menu
  
  background(0); //Fondo de color negro
  
  titleMenu = loadImage("titleMenu.png"); //Se crea la variable titleMenu para cargar la imagen PNG del mismo nombre
  titlePlay = loadImage("titlePlay.png"); //Se crea la variable titlePlay para cargar la imagen PNG del mismo nombre
  titleHowToPlay = loadImage("titleHowToPlay.png"); //Se crea la variable titleHowToPlay para cargar la imagen PNG del mismo nombre
  barra = loadImage("barra.png"); //Se crea la variable barra para cargar la imagen PNG del mismo nombre
  titleBall = loadImage("titleBall.png"); //Se crea la variable titleBall para cargar la imagen PNG del mismo nombre
  
  image(titleMenu,285,20,400,100); //Se define tanto la ubicacion como el tamaño que tendra la imagen titleMenu
  image(titlePlay,310,225,196,77); //Se define tanto la ubicacion como el tamaño que tendra la imagen titlePlay
  image(titleHowToPlay,310,425,196,77); //Se define tanto la ubicacion como el tamaño que tendra la imagen titleHowToPlay
  image(barra,20,50,80,350); //Se define tanto la ubicacion como el tamaño que tendra la imagen barra
  image(barra,700,200,80,350);
  image(titleBall,360,330,70,66); //Se define tanto la ubicacion como el tamaño que tendra la imagen titleBall
  
   if(mouseX>310 && mouseX<506 && mouseY>225 && mouseY<302 && mousePressed == true){//Se crea un if, el cual nos sirve para limitar una zona así cuando la presion del mouse sea verdadero
    gameState = "PLAY"; //La variable gameState ahora tendra el valor de "PLAY" por lo cual llamara al metodo play()
  }
   
  if(mouseX>310 && mouseX<506 && mouseY>425 && mouseY<502 && mousePressed == true){//Se crea un if, el cual nos sirve para limitar una zona así cuando la presion del mouse sea verdadero
    gameState = "REGLAS"; //La variable gameState ahora tendra el valor de "REGLAS" por lo cual llamara al metodo reglas()
  }
  
}
