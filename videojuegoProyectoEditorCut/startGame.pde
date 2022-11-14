PImage cover, title, subtitle, titleName; //Variables para poder llamar a imagenes

void startGame() { //Este es el metodo startGame

  background(0); //Fondo de color negro

  cover = loadImage("cover.png"); //Se crea la variable cover para cargar la imagen PNG del mismo nombre
  title = loadImage("title.png"); //Se crea la variable title para cargar la imagen PNG del mismo nombre
  subtitle = loadImage("subtitle.png"); //Se crea la variable subtitle para cargar la imagen PNG del mismo nombre
  titleName = loadImage("titleName.png"); //Se crea la variable titleName para cargar la imagen PNG del mismo nombre

  image(title, 200, 20, 400, 200); //Se define tanto la ubicacion como el tamaño que tendra la imagen title
  image(cover, 275, 200, 300, 300); //Se define tanto la ubicacion como el tamaño que tendra la imagen cover
  image(subtitle, 268, 490, 280, 80); //Se define tanto la ubicacion como el tamaño que tendra la imagen subtitle
  image(titleName, 10, 565, 252, 40); //Se define tanto la ubicacion como el tamaño que tendra la imagen titleName

  if (mousePressed == true) { //En caso de que el mouse presione la pantalla
    gameState = "MENU"; //La variable gameState tendra el valor de "MENU" por ende se llamara al metodo de menu()
  }
}
