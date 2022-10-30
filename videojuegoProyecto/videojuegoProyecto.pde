PImage cover,title,subtitle;
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
  
}

void clearBackground(){
  
  fill(255);
  rect(0,0,width,height);
}
