PImage cover,title,subtitle, titleMenu, titlePlay, titleHowToPlay, barra, titleBall;
String gameState;


void setup(){
  size(800,600);
  gameState="START";

}

void draw(){
  
  clearBackground();
  
  if (gameState == "START"){
    startGame();
  }
  
  else if (gameState == "MENU"){
    menu();
  }
  
  else if(gameState == "REGLAS"){
    reglas();  
  }
  
  else if(gameState == "PLAY"){
    play();  
  }
  

}

void startGame(){
  
  background(0);
  
  cover = loadImage("cover.png");
  title = loadImage("title.png");
  subtitle = loadImage("subtitle.png");
  
  image(title,200,20,400,200);
  image(cover,275,200,300,300);
  image(subtitle,268,490,280,80);
  
  if(mousePressed == true){
    gameState = "MENU";
  }

}

void menu(){
  
  background(0);
  
  titleMenu = loadImage("titleMenu.png");
  titlePlay = loadImage("titlePlay.png");
  titleHowToPlay = loadImage("titleHowToPlay.png");
  barra = loadImage("barra.png");
  titleBall = loadImage("titleBall.png");
  
  
  image(titleMenu,285,20,400,100);
  image(titlePlay,310,225,196,77);
  image(titleHowToPlay,310,425,196,77);
  
  image(barra,20,50,80,350);
  image(barra,700,200,80,350);
  
  image(titleBall,360,330,70,66);
  
   if(mouseX>310 && mouseX<506 && mouseY>225 && mouseY<302 && mousePressed == true){
    gameState = "PLAY";
  }
   
  if(mouseX>310 && mouseX<506 && mouseY>425 && mouseY<502 && mousePressed == true){
    gameState = "REGLAS";
  }
  
}

void reglas(){
  
  background(0);
  text("Hola",300,300);
}

void play(){
  
  background(0);
  text("El Juego",300,300);
}

void clearBackground(){
  
  fill(255);
  rect(0,0,width,height);
  
}
