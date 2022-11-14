//Inicio de Declaración de Variables
String gameState; //Variable que se utiliza para cambiar el estado de juego

int hOK, porcion, altura=80, hbarra=60, hcampo; //Estas variables se usan para marcar la altura ya sea del campo, barra, lo largo de los botones para Ok,etc

float ppx, ppy; //Variables que marcan los ejes X y Y de la pelota de Ping Pong

float posh1, posh2; //Estas variables se usan para marcar la posición de la altura de los Jugadores 1 y 2
//Fin de Declaración de Variables

void setup() {

  size(800, 600); //Se define el tamaño que tendra el lienzo en este caso de 800x600
  rectMode(CENTER); //Ponemos los rectangulo en el centro

  hOK=height-100; //hOk tendra el valor de height menos 100, en este caso sera de 700
  porcion=(hOK-alturaOK/2)/6; //Esto es una formula para obtener de forma distribuida la altura de los rectangulos que contendran los colores

  hcampo=height-hbarra; //Delimitamos la altura del campo, marcamos la altura jugable
  posh1=hbarra+hcampo/2; //Hacemos que posh1 se alinee al centro de la altura jugable
  posh2=hbarra+hcampo/2; //De igual forma hacemos que posh2 se alinee al centro de la altura jugable
  ppx=width/2; //Aqui declaramos que la pelota en el eje X estara en la mitad
  ppy=hcampo/2+hbarra; //Aqui declaramos que la pelota estara en el Eje Y a la mitad, tambien tomamos en cuenta hbarra para que este en el centro total

  gameState="START"; //Esta es nuestra variable que cambiara el estado del juego
}

void draw() {

  //clearBackground(); //Mandamos a llamar al metodo clearBackground

  if (gameState == "START") { //En caso de que gameState sea igual a "START"
    startGame(); //Mandamos a llamar al metodo starGame()
  } 
  
  else if (gameState == "MENU") { //Sino en caso de que gameState sea igual a "MENU"
    menu(); //Mandamos a llamar al metodo menu()
  }

  else if(gameState == "REGLAS"){ //Sino en caso de que gameState sea igual a "REGLAS"
   reglas();//Mandamos a llamar al metodo reglas()
  }

  else if(gameState == "PLAY"){ //Sino en caso de que gameState sea igual a "PLAY"
   play(); //Mandamos a llamar al metodo play()
  }
}
