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
  
  else if (gameState == "SEGUNDA"){
    menu();
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
    gameState = "SEGUNDA";
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
  
}

void clearBackground(){
  
  fill(255);
  rect(0,0,width,height);
}
