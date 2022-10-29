PImage cover,title;
String gameState;


void setup(){
  size(800,600);
  gameState="START"
}
void draw(){
  
  clearBackground();
  
  if (gameState == "START"){
    startGame();
  }
  
  background(0);
  cover = loadImage("cover.png");
  title = loadImage("title.png");
  image(cover,300,300,200,200);
  image(title,100,100,200,100);
}
