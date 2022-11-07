PImage cover,title,subtitle, titleMenu, titlePlay, titleHowToPlay, barra, titleBall, titleForm, titleITE, albatro, titleReglas, reglas, buttonBack, titleName;

String gameState;

int spess=0;
int spessSelezioneForma=255;
int spessSelezioneCol1=0;
int spessSelezioneNum=0;

int bordoquad1=50, bordoquad2=50,bordoquad3=50,bordoquad4=50;
int baseforma=120;

int formarect1=200, formarect2=200, formarect3=200, formarect4=200;

int scrittaprontoforma1=0,scrittaprontoforma2=0;
int scrittaprontocolore1=0,scrittaprontocolore2=0;

int colOK1=40, colOK2=40;
int colOK1B=40, colOK2B=40;

int hOK,hOK2;

int baseOK=80, baseOK2=80;
int altezzaOK=40,altezzaOK2=40;

int porzione6;

int asse1A, asse1B, asse2A, asse2B;

int rect1n1=0, rect1n2=0, rect1n3=0, rect1n4=0, rect1n5=0, rect1n6=0, rect1n7=0, rect1n8=0, rect1n9=0, rect1n10=0;
int rect2n1=0, rect2n2=0, rect2n3=0, rect2n4=0, rect2n5=0, rect2n6=0, rect2n7=0, rect2n8=0, rect2n9=0, rect2n10=0;

int basecolore=50;

int punteggio1, punteggio2;
int r=(int)random(0, 100);

float basepunt=52;
float base=10;
float altezza=80;
float hbarra=60;

float col1R=50, col1G=50, col1B=50, col2R=50, col2G=50, col2B=50;
float rect8=altezza/8;

float ppx,ppy;

float velPallax=0, velPlayer1=0, velPlayer2=0, velPallay=0;
float posh1, posh2;
float dia=15;
float hcampo;

boolean formaPlayer1=true, formaPlayer2=true;
boolean scorer=true;
boolean vincitorePlayer1=true;

void setup(){
  size(800,600);
  rectMode(CENTER);
  
  hOK=height-100;
  porzione6=(hOK-altezzaOK/2)/6;
  
  hcampo=height-hbarra;
  posh1=hbarra+hcampo/2;
  posh2=hbarra+hcampo/2;
  ppx=width/2;
  ppy=hcampo/2+hbarra;
  
  
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
  titleName = loadImage("titleName.png");
  
  image(title,200,20,400,200);
  image(cover,275,200,300,300);
  image(subtitle,268,490,280,80);
  image(titleName,10,565,252,40);
  
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
  
  buttonBack = loadImage("buttonBack.png");
  image(buttonBack,0,0,75,75);
  
  reglas = loadImage("reglas.png");
  image(reglas,260,30,300,80);

  titleReglas = loadImage("titleReglas.png");
  image(titleReglas,50,100,700,500);

  if(mouseX>0 && mouseX<75 && mouseY>0 && mouseY<75 && mousePressed == true){
    gameState = "MENU";
  }

}

void play(){
  
  background(0);
  
  
  if (spessSelezioneForma==255){
    formaRaquetas();
  }
   

  if (spessSelezioneCol1==255) {
    colorRaquetas();
  }
  
  if (spess==255) {
    cuerpoJuego();
  }
  
  if (spess+spessSelezioneCol1+spessSelezioneForma+spessSelezioneNum==0){ 
     pantallaFinal();
    }
  
}


void clearBackground(){
  
  fill(255);
  rect(0,0,width,height);
  
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                                                                                //<DESARROLLO DEL VIDEOJUEGO>//
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

void formaRaquetas(){

  background(0);

  titleForm = loadImage("titleForm.png");
  image(titleForm,215,10,405,60);
  
  stroke(200);
  strokeWeight(2);
  line(width/2, 100, width/2, height-100);
  
  fill(bordoquad1); 
  rect(width/4, (height-100)/3, baseforma, baseforma);
  fill(bordoquad2); 
  rect(width/4, ((height-100)/3)*2, baseforma, baseforma);
  fill(bordoquad3); 
  rect((width/4)*3, (height-100)/3, baseforma, baseforma);
  fill(bordoquad4); 
  rect((width/4)*3, ((height-100)/3)*2, baseforma, baseforma);
  
  strokeWeight(1);
  stroke(50);
  
  fill(formarect1);
  rect(width/4, (height-100)/3, base, altezza);
  
  fill(formarect2);
  rect(width/4, ((height-100)/3)*2, base, altezza);
  fill(bordoquad2);
  rect(width/4, ((height-100)/3)*2, base-6, altezza-6);
  
  fill(formarect3);
  rect((width/4)*3, (height-100)/3, base, altezza);
  
  fill(formarect4);
  rect((width/4)*3, ((height-100)/3)*2, base, altezza);
  fill(bordoquad4);
  rect((width/4)*3, ((height-100)/3)*2, base-6, altezza-6);
  
  //ok

  fill(colOK1);
  stroke(0);

  rect(200, height-100, baseOK, altezzaOK, 10);
  textSize(30);
  fill(0);
  text("OK", 177, height-90);
  
  fill(colOK2);
  rect(width-200, height-100, baseOK, altezzaOK, 10);
  fill(0);
  text("OK", width-223, height-90);
  
  textSize(25);
  strokeWeight(1);
  stroke(scrittaprontoforma1);
  fill(scrittaprontoforma1);
  text("Jugador 1 READY", 110, height-35);
  stroke(scrittaprontoforma1);
  fill(scrittaprontoforma2);
  text("Jugador 2 READY", width-290, height-35);
  
  if (bordoquad1+bordoquad2==250) {
    colOK1=200;
  }
  if (bordoquad3+bordoquad4==250) {
    colOK2=200;
  }

  if (scrittaprontoforma1==200){
    colOK1=40;
  }
  
  if (scrittaprontoforma2==200){
    colOK2=40;
  }

  if (scrittaprontoforma1+ scrittaprontoforma2==400) {
    spessSelezioneForma=0;
    spessSelezioneCol1=255;
  }
  
}
  
void colorRaquetas(){

  //background(0);
 
  asse1A=(width/2-30)/3;
  asse1B=(width/2-30)/3*2;
  asse2A=(width/2+30)+asse1A;
  asse2B=(width/2+30)+(2*asse1A);
  
  stroke(200);
  strokeWeight(2);
  line(width/2, 50, width/2, height-100);

  fill(colOK1B);
  stroke(0);

  rect(180, height-100, baseOK2, altezzaOK2, 10);
  textSize(30);
  fill(0);
  text("OK", 157, height-90);

  fill(colOK2B);
  rect(width-180, height-100, baseOK2, altezzaOK2, 10);
  fill(0);
  text("OK", width-203, height-90);

  stroke(col1R, col1G, col1B);
  fill(col1R, col1G, col1B);
  rect(width/2-30, height/2, base*2, altezza*2);

  if (formaPlayer1==true) {
    stroke(col1R, col1G, col1B);
    fill(col1R, col1G, col1B);
    rect(width/2-30, height/2, (base*2)-12, (altezza*2)-12);
  }
  if (formaPlayer1==false) {
    stroke(0);
    fill(0);
    rect(width/2-30, height/2, ( base*2)-12, (altezza*2)-12);
  }

  stroke(col2R, col2G, col2B);
  fill(col2R, col2G, col2B);
  rect(width/2+30, height/2, base*2, altezza*2);

  if (formaPlayer2==true) {
    stroke(col2R, col2G, col2B);
    fill(col2R, col2G, col2B);
    rect(width/2+30, height/2, (base*2)-12, (altezza*2)-12);
  }
  if (formaPlayer2==false) {
    stroke(0);
    fill(0);
    rect(width/2+30, height/2, (base*2)-12, (altezza*2)-12);
  }

  strokeWeight(5);

  stroke(rect1n1);
  fill(255, 255, 255);
  rect(asse1A, porzione6, basecolore, basecolore);
  stroke(rect1n2);
  fill(243, 248, 48);
  rect(asse1A, porzione6*2, basecolore, basecolore);
  stroke(rect1n3);
  fill(255, 213, 0);
  rect(asse1A, porzione6*3, basecolore, basecolore);
  stroke(rect1n4);
  fill(255, 115, 0);
  rect(asse1A, porzione6*4, basecolore, basecolore);
  stroke(rect1n5);
  fill(255, 0, 0);
  rect(asse1A, porzione6*5, basecolore, basecolore);

  stroke(rect1n6);
  fill(245, 173, 238);
  rect(asse1B, porzione6, basecolore, basecolore);
  stroke(rect1n7);
  fill(250, 0, 255);
  rect(asse1B, porzione6*2, basecolore, basecolore);
  stroke(rect1n8);
  fill(0, 0, 255);
  rect(asse1B, porzione6*3, basecolore, basecolore);
  stroke(rect1n9);
  fill(17, 247, 234);
  rect(asse1B, porzione6*4, basecolore, basecolore);
  stroke(rect1n10);
  fill(0, 255, 0);
  rect(asse1B, porzione6*5, basecolore, basecolore);

  stroke(rect2n1);
  fill(255, 255, 255);
  rect(asse2A, porzione6, basecolore, basecolore);
  stroke(rect2n2);
  fill(243, 248, 48);
  rect(asse2A, porzione6*2, basecolore, basecolore);
  stroke(rect2n3);
  fill(255, 213, 0);
  rect(asse2A, porzione6*3, basecolore, basecolore);
  stroke(rect2n4);
  fill(255, 115, 0);
  rect(asse2A, porzione6*4, basecolore, basecolore);
  stroke(rect2n5);
  fill(255, 0, 0);
  rect(asse2A, porzione6*5, basecolore, basecolore);

  stroke(rect2n6);
  fill(245, 173, 238);
  rect(asse2B, porzione6, basecolore, basecolore);
  stroke(rect2n7);
  fill(250, 0, 255);
  rect(asse2B, porzione6*2, basecolore, basecolore);
  stroke(rect2n8);
  fill(0, 0, 255);
  rect(asse2B, porzione6*3, basecolore, basecolore);
  stroke(rect2n9);
  fill(17, 247, 234);
  rect(asse2B, porzione6*4, basecolore, basecolore);
  stroke(rect2n10);
  fill(0, 255, 0);
  rect(asse2B, porzione6*5, basecolore, basecolore);

  textSize(25);
  strokeWeight(1);
  stroke(scrittaprontocolore1);
  fill(scrittaprontocolore1);
  text("Jugador 1 READY", 100, height-30);
  stroke(scrittaprontocolore1);
  fill(scrittaprontocolore2);
  text("Jugador 2 READY", width-270, height-30);

  if (rect2n1+rect2n2+rect2n3+rect2n4+rect2n5+rect2n6+rect2n7+rect2n8+rect2n9+rect2n10==200) {

    colOK2B=200;
  }

  if (rect1n1+rect1n2+rect1n3+rect1n4+rect1n5+rect1n6+rect1n7+rect1n8+rect1n9+rect1n10==200) {

    colOK1B=200;
  }

  if (scrittaprontocolore1==200)colOK1B=40;
  if (scrittaprontocolore2==200)colOK2B=40;

  if (scrittaprontocolore1+ scrittaprontocolore2==400) {
    spessSelezioneCol1=0;
    spess=255;
  }
}

void cuerpoJuego(){
 
  ppy= ppy+velPallay;
  ppx= ppx+velPallax;
  posh1= posh1+velPlayer1;
  posh2= posh2+velPlayer2;

  fill(255);
  rect(width/2, 110 ,5,25);
  rect(width/2, 145 ,5,20);
  rect(width/2, 175 ,5,20);
  rect(width/2, 205 ,5,20);
  rect(width/2, 235 ,5,20);
  rect(width/2, 265 ,5,20);
  rect(width/2, 295 ,5,20);
  rect(width/2, 325 ,5,20);
  rect(width/2, 355 ,5,20);
  rect(width/2, 385 ,5,20);
  rect(width/2, 415 ,5,20);
  rect(width/2, 445 ,5,20);
  rect(width/2, 475 ,5,20);
  rect(width/2, 505 ,5,20);
  rect(width/2, 535 ,5,20);
  rect(width/2, 560 ,5,15);

  strokeWeight(0);
  println(scorer);
  stroke(0);
  fill(col1R, col1G, col1B, spess);
  rect(base/2, posh1, base, altezza);

  strokeWeight(1);

  if (formaPlayer1==true) {
    stroke(col1R, col1G, col1B);
    fill(col1R, col1G, col1B);
  }

  if (formaPlayer1==false) {
    stroke(0);
    fill(0);
  }

  rect(base/2, posh1, base-6, altezza-6);
  strokeWeight(0);
  stroke(col2R, col2G, col2B);
  fill(col2R, col2G, col2B);  
  rect(width-base/2, posh2, base, altezza);

  strokeWeight(1);
  if (formaPlayer2==true) {
    stroke(col2R, col2G, col2B);
    fill(col2R, col2G, col2B);
    rect(width-base/2, posh2, base-6, altezza-6);
  }

  if (formaPlayer2==false) {
    stroke(0);
    fill(0);
    rect(width-base/2, posh2, base-6, altezza-6);
  }

  stroke(170);
  fill(255);  
  ellipse(ppx, ppy, dia, dia);

  stroke(200);
  fill(0, 85, 255);  
  rect(width/2, hbarra/2, width, hbarra);

  stroke(0, spess);
  fill(0, spess);
  rect(hbarra/2, hbarra/2, basepunt, basepunt, 7);
  rect(width-hbarra/2, hbarra/2, basepunt, basepunt, 7);

  //Puntuación del Jugador1
  textSize(50);
  fill(col1R, col1G, col1B, spess);
  text(punteggio1, 18, 45);

  //Puntuación del Jugador2
  fill(col2R, col2G, col2B, spess);
  text(punteggio2, width-(17+basepunt/2), 45);

  
  //Titulo
  textSize(50);
  fill(255);
  text("PING PONG", width/2-110, 50);

  albatro = loadImage("albatro.png");
  image(albatro,605,1,60,60);
  image(albatro,135,1,60,60);

  //Limite Superior del Jugador1
  if (posh1<=hbarra+altezza/2) {
    posh1=hbarra+altezza/2;
  }
  //Limite Inferior del Jugador1
  if (posh1>=height-altezza/2) {
    posh1=height-altezza/2;
  }

  //Limite Superior del Jugador2
  if (posh2<=hbarra+altezza/2) {
    posh2=hbarra+altezza/2;
  }
  //Limite Inferior del Jugador2
  if (posh2>=height-altezza/2) {
    posh2=height-altezza/2;
  }

  //Limite Superior de la Bola
  if (ppy<=hbarra+dia/2) {
    ppy=hbarra+dia/2;
    velPallay=-velPallay;
  }

  //Limite Inferior de la Bola
  if (ppy>=height-dia/2) {
    ppy=height-dia/2;
    velPallay=-velPallay;
  }

  if (ppx>=width-(5+base+(dia/2))) {

    if (ppy<=posh2+altezza/2 && ppy>=posh2-altezza/2) {
      velPallax=-10;

      if (keyCode==38) {

        if (ppy>=posh2+(3*rect8) && ppy<=posh2+(altezza/2)) {
          velPallay=-2;
        } else if (ppy>=posh2+(2*rect8) && ppy<=posh2+(3*rect8)) {
          velPallay=-3;
        } else if (ppy>=posh2+(rect8) && ppy<=posh2+(2*rect8)) {
          velPallay=-5;
        } else if (ppy>=posh2 && ppy<=posh2+(rect8)) {
          velPallay=-6;
        } else if (ppy>=posh2-(rect8) && ppy<=posh2) {
          velPallay=-8;
        } else if (ppy>=posh2-(2*rect8) && ppy<=posh2-(rect8)) {
          velPallay=-9;
        } else if (ppy>=posh2-(3*rect8) && ppy<=posh2-(2*rect8)) {
          velPallay=-10;
        } else if (ppy>=posh2-(altezza/2) && ppy<=posh2-(3*rect8)) {
          velPallay= -12;
        }
      } else if (keyCode==40) {

        if (ppy>=posh2+(3*rect8) && ppy<=posh2+(altezza/2)) {
          velPallay=+12;
        } else if (ppy>=posh2+(2*rect8) && ppy<=posh2+(3*rect8)) {
          velPallay=+10;
        } else if (ppy>=posh2+(rect8) && ppy<=posh2+(2*rect8)) {
          velPallay=+9;
        } else if (ppy>=posh2 && ppy<=posh2+(rect8)) {
          velPallay=+8;
        } else if (ppy>=posh2-(rect8) && ppy<=posh2) {
          velPallay=+6;
        } else if (ppy>=posh2-(2*rect8) && ppy<=posh2-(rect8)) {
          velPallay=+5;
        } else if (ppy>=posh2-(3*rect8) && ppy<=posh2-(2*rect8)) {
          velPallay=+3;
        } else if (ppy>=posh2-(altezza/2) && ppy<=posh2-(3*rect8)) {
          velPallay= +2;
        }
      }
    }
  }

  if (ppx<=5+base+(dia/2)) {

    if (ppy<=posh1+altezza/2 && ppy>=posh1-altezza/2) {
      velPallax=10;

      if (keyCode==87) {
        if (ppy>=posh1+(3*rect8) && ppy<=posh1+(altezza/2)) {
          velPallay=-2;
        } else if (ppy>=posh1+(2*rect8) && ppy<=posh1+(3*rect8)) {
          velPallay=-3;
        } else if (ppy>=posh1+(rect8) && ppy<=posh1+(2*rect8)) {
          velPallay=-5;
        } else if (ppy>=posh1 && ppy<=posh1+(rect8)) {
          velPallay=-6;
        } else if (ppy>=posh1-(rect8) && ppy<=posh1) {
          velPallay=-8;
        } else if (ppy>=posh1-(2*rect8) && ppy<=posh1-(rect8)) {
          velPallay=-9;
        } else if (ppy>=posh1-(3*rect8) && ppy<=posh1-(2*rect8)) {
          velPallay=-10;
        } else if (ppy>=posh1-(altezza/2) && ppy<=posh1-(3*rect8)) {
          velPallay= -12;
        }
      } else if (keyCode==83) {
        if (ppy>=posh1+(3*rect8) && ppy<=posh1+(altezza/2)) {
          velPallay=12;
        } else if (ppy>=posh1+(2*rect8) && ppy<=posh1+(3*rect8)) {
          velPallay=12;
        } else if (ppy>=posh1+(rect8) && ppy<=posh1+(2*rect8)) {
          velPallay=9;
        } else if (ppy>=posh1 && ppy<=posh1+(rect8)) {
          velPallay=8;
        } else if (ppy>=posh1-(rect8) && ppy<=posh1) {
          velPallay=6;
        } else if (ppy>=posh1-(2*rect8) && ppy<=posh1-(rect8)) {
          velPallay=5;
        } else if (ppy>=posh1-(3*rect8) && ppy<=posh1-(2*rect8)) {
          velPallay=3;
        } else if (ppy>=posh1-(altezza/2) && ppy<=posh1-(3*rect8)) {
          velPallay=2;
        }
      }
    }
  }

  //La bola supera los bordes
  if (ppx>=width+dia/2) {
    velPallax=0;
    ppx=width/2;
    ppy=hbarra+hcampo/2;
    punteggio1++;
    scorer=true;
  }
  
    if (ppx<=-dia/2) {
    velPallax=0;
    ppx=width/2;
    ppy=hbarra+hcampo/2;
    punteggio2++;
    scorer=false;
  }
  
  if (velPallax==0) {
    velPallay=0;
    posh1=hbarra+hcampo/2;
    posh2=hbarra+hcampo/2;
    textSize(25);
    fill(200, spess);
    text("Presiona SPACE para iniciar", width/2-140, height-10);

    if (keyCode==32) {

      if (punteggio1+punteggio2==0) {
        if (r<50) {
          velPallax=5;
        } else {
          velPallax=-5;
        }
      } else {
        if (scorer==true) { 
          velPallax=5;
        } else {  
          velPallax=-5;
        }
      }
    }
  }

  if (punteggio1==5) {
    spess=0;
    vincitorePlayer1=true;
  }

  if (punteggio2==5) {
    spess=0;
    vincitorePlayer1=false;
  }
}

void pantallaFinal() {
  if (vincitorePlayer1==true) {
    velPallax=0;
    //player1 win
    textSize(80);
    fill(col1R, col1G, col1B);
    text("JUGADOR 1 WIN", width/2-260, height/2);

    //Presiona R para reiniciar el juego    
    textSize(30);
    fill(200);
    text("Presiona R para reiniciar el juego", width/2-205, height-160);

    //Presiona E para ir al estilo
    text("Presiona E para ir al Estilo de las raquetas", width/2-250, height-130);


    fill(0, 85, 255);    
    rect(width/2, hbarra/2, width, hbarra);
    textSize(50);
    fill(255);
    text("PING PONG", width/2-110, 50);

    albatro = loadImage("albatro.png");
    image(albatro,605,1,60,60);
    image(albatro,135,1,60,60);

    if (keyCode==82) {
      velPallax=0;
      punteggio1=0;
      punteggio2=0;
      spess=255;
    }
    if (keyCode==69) {
      spess=0;
      spessSelezioneForma=255;

      scorer=true;
      formaPlayer1=true;
      formaPlayer2=true;

      vincitorePlayer1=true;

      col1R=50;
      col1G=50;
      col1B=50;
      col2R=50;
      col2G=50;
      col2B=50;

      bordoquad1=50;
      bordoquad2=50;
      bordoquad3=50;
      bordoquad4=50;

      formarect1=200;
      formarect2=200;
      formarect3=200;
      formarect4=200;

      colOK1=40;
      colOK2=40;
      colOK1B=40;
      colOK2B=40;

      scrittaprontoforma1=0;
      scrittaprontoforma2=0;

      scrittaprontocolore1=0;
      scrittaprontocolore2=0;

      punteggio1=0;
      punteggio2=0;
      
      rect1n1=0;
      rect1n2=0;
      rect1n3=0;
      rect1n4=0;
      rect1n5=0;
      rect1n6=0;
      rect1n7=0;
      rect1n8=0;
      rect1n9=0;
      rect1n10=0;

      rect2n1=0;
      rect2n2=0;
      rect2n3=0;
      rect2n4=0;
      rect2n5=0;
      rect2n6=0;
      rect2n7=0;
      rect2n8=0;
      rect2n9=0;
      rect2n10=0;
    }
  }

  if (vincitorePlayer1==false) {
    velPallax=0;
    //player2 win
    textSize(80);
    fill(col2R, col2G, col2B);
    text("JUGADOR 2 WIN", width/2-260, height/2);

    //Presiona R para ir al juego  
    textSize(30);
    fill(200);
    text("Presiona R para reiniciar el juego", width/2-205, height-160);

    //Presiona E para ir al estilo
    text("Presiona E para ir al Estilo de las raquetas", width/2-250, height-130);

    fill(0, 85, 255);   
    rect(width/2, hbarra/2, width, hbarra);
    textSize(50);
    fill(255);
    text("PING PONG", width/2-110, 50);

    albatro = loadImage("albatro.png");
    image(albatro,605,1,60,60);
    image(albatro,135,1,60,60);

    if (keyCode==82) {
      velPallax=0;
      punteggio1=0;
      punteggio2=0;
      spess=255;
    }

    if (keyCode==69) {
      spess=0;
      spessSelezioneForma=255;

      scorer=true;
      formaPlayer1=true;
      formaPlayer2=true;

      vincitorePlayer1=true;

      col1R=50;
      col1G=50;
      col1B=50;
      col2R=50;
      col2G=50;
      col2B=50;

      bordoquad1=50;
      bordoquad2=50;
      bordoquad3=50;
      bordoquad4=50;

      formarect1=200;
      formarect2=200;
      formarect3=200;
      formarect4=200;

      colOK1=40;
      colOK2=40;

      colOK1B=40;
      colOK2B=40;

      scrittaprontoforma1=0;
      scrittaprontoforma2=0;

      scrittaprontocolore1=0;
      scrittaprontocolore2=0;

      punteggio1=0;
      punteggio2=0;

      rect1n1=0;
      rect1n2=0;
      rect1n3=0;
      rect1n4=0;
      rect1n5=0;
      rect1n6=0;
      rect1n7=0;
      rect1n8=0;
      rect1n9=0;
      rect1n10=0;

      rect2n1=0;
      rect2n2=0;
      rect2n3=0;
      rect2n4=0;
      rect2n5=0;
      rect2n6=0;
      rect2n7=0;
      rect2n8=0;
      rect2n9=0;
      rect2n10=0;
    }
  }
}

void mouseClicked() {
  
  if (spessSelezioneForma==255) {
    //quad 1  
    if (mouseX>=  width/4-baseforma/2 &&
      mouseX<=  width/4+baseforma/2 &&
      mouseY>=(height-100)/3-baseforma/2 &&
      mouseY<=(height-100)/3+baseforma/2) {
      bordoquad1=200;
      bordoquad2=50;
      formarect1=50;
      formarect2=200;
      formaPlayer1=true;
    }
    //quad2
    if (mouseX>=  width/4-baseforma/2 &&
      mouseX<=  width/4+baseforma/2 &&
      mouseY>=((height-100)/3)*2-baseforma/2 &&
      mouseY<=((height-100)/3)*2+baseforma/2) {
      bordoquad2=200;
      bordoquad1=50;
      formarect2=50;
      formarect1=200;
      formaPlayer1=false;
    }
    //quad3
    if (mouseX>=  (width/4)*3-baseforma/2 &&
      mouseX<=  (width/4)*3+baseforma/2 &&
      mouseY>=(height-100)/3-baseforma/2 &&
      mouseY<=(height-100)/3+baseforma/2) {
      bordoquad3=200;
      bordoquad4=50;
      formarect3=50;
      formarect4=200;
      formaPlayer2=true;
    }
    //quad4
    if (mouseX>=  (width/4)*3-baseforma/2 &&
      mouseX<=  (width/4)*3+baseforma/2 &&
      mouseY>=((height-100)/3)*2-baseforma/2 &&
      mouseY<=((height-100)/3)*2+baseforma/2) {
      bordoquad4=200;
      bordoquad3=50;
      formarect4=50;
      formarect3=200;
      formaPlayer2=false;
    }

    if (colOK1==200) {
      if (mouseX>= 200-baseOK/2 &&
        mouseX<= 200+baseOK/2 &&
        mouseY>=hOK-altezzaOK/2 &&
        mouseY<=hOK+altezzaOK/2) {
        scrittaprontoforma1=200;
        colOK1=40;
      }
    }
    if (colOK2==200) {
      if (mouseX>= (width-200)-baseOK/2 &&
        mouseX<= (width-100)+baseOK/2 &&
        mouseY>=hOK-altezzaOK/2 &&
        mouseY<=hOK+altezzaOK/2) {
        scrittaprontoforma2=200;
        colOK2=40;
      }
    }
  }
  
  if (spessSelezioneCol1==255) {

    //colore 1

    if (mouseX>= asse1A-basecolore/2 &&
      mouseX<= asse1A+basecolore/2 &&
      mouseY>= porzione6 -basecolore/2 &&
      mouseY<= porzione6+basecolore/2) {

      rect1n1=200;
      rect1n2=0;
      rect1n3=0;
      rect1n4=0;
      rect1n5=0;
      rect1n6=0;
      rect1n7=0;
      rect1n8=0;
      rect1n9=0;
      rect1n10=0;

      col1R=255;
      col1G=255;
      col1B=255;
    }

    //colore 2

    if (mouseX>= asse1A-basecolore/2 &&
      mouseX<= asse1A+basecolore/2 &&
      mouseY>= porzione6*2 -basecolore/2 &&
      mouseY<= porzione6*2+basecolore/2) {

      rect1n1=0;
      rect1n2=200;
      rect1n3=0;
      rect1n4=0;
      rect1n5=0;
      rect1n6=0;
      rect1n7=0;
      rect1n8=0;
      rect1n9=0;
      rect1n10=0;

      col1R=246;
      col1G=255;
      col1B=0;
    }

    //colore3

    if (mouseX>= asse1A-basecolore/2 &&
      mouseX<= asse1A+basecolore/2 &&
      mouseY>= porzione6*3 -basecolore/2 &&
      mouseY<= porzione6*3 +basecolore/2) {

      rect1n1=0;
      rect1n2=0;
      rect1n3=200;
      rect1n4=0;
      rect1n5=0;
      rect1n6=0;
      rect1n7=0;
      rect1n8=0;
      rect1n9=0;
      rect1n10=0;

      col1R=255;
      col1G=213;
      col1B=0;
    }

    //colore 4

    if (mouseX>= asse1A-basecolore/2 &&
      mouseX<= asse1A+basecolore/2 &&
      mouseY>= porzione6*4 -basecolore/2 &&
      mouseY<= porzione6*4 +basecolore/2) {

      rect1n1=0;
      rect1n2=0;
      rect1n3=0;
      rect1n4=200;
      rect1n5=0;
      rect1n6=0;
      rect1n7=0;
      rect1n8=0;
      rect1n9=0;
      rect1n10=0;

      col1R=255;
      col1G=115;
      col1B=0;
    }

    //colore 5

    if (mouseX>= asse1A-basecolore/2 &&
      mouseX<= asse1A+basecolore/2 &&
      mouseY>= porzione6*5 -basecolore/2 &&
      mouseY<= porzione6*5 +basecolore/2) {

      rect1n1=0;
      rect1n2=0;
      rect1n3=0;
      rect1n4=0;
      rect1n5=200;
      rect1n6=0;
      rect1n7=0;
      rect1n8=0;
      rect1n9=0;
      rect1n10=0;

      col1R=255;
      col1G=0;
      col1B=0;
    }

    //colore 6

    if (mouseX>= asse1B-basecolore/2 &&
      mouseX<= asse1B+basecolore/2 &&
      mouseY>= porzione6 -basecolore/2 &&
      mouseY<= porzione6+basecolore/2) {

      rect1n1=0;
      rect1n2=0;
      rect1n3=0;
      rect1n4=0;
      rect1n5=0;
      rect1n6=200;
      rect1n7=0;
      rect1n8=0;
      rect1n9=0;
      rect1n10=0;

      col1R=245;
      col1G=173;
      col1B=238;
    }

    //colore 7

    if (mouseX>= asse1B-basecolore/2 &&
      mouseX<= asse1B+basecolore/2 &&
      mouseY>= porzione6*2 -basecolore/2 &&
      mouseY<= porzione6*2+basecolore/2) {

      rect1n1=0;
      rect1n2=0;
      rect1n3=0;
      rect1n4=0;
      rect1n5=0;
      rect1n6=0;
      rect1n7=200;
      rect1n8=0;
      rect1n9=0;
      rect1n10=0;

      col1R=250;
      col1G=0;
      col1B=255;
    }

    //colore 8

    if (mouseX>= asse1B-basecolore/2 &&
      mouseX<= asse1B+basecolore/2 &&
      mouseY>= porzione6*3 -basecolore/2 &&
      mouseY<= porzione6*3 +basecolore/2) {

      rect1n1=0;
      rect1n2=0;
      rect1n3=0;
      rect1n4=0;
      rect1n5=0;
      rect1n6=0;
      rect1n7=0;
      rect1n8=200;
      rect1n9=0;
      rect1n10=0;

      col1R=0;
      col1G=0;
      col1B=255;
    }

    //colore 9

    if (mouseX>= asse1B-basecolore/2 &&
      mouseX<= asse1B+basecolore/2 &&
      mouseY>= porzione6*4 -basecolore/2 &&
      mouseY<= porzione6*4 +basecolore/2) {

      rect1n1=0;
      rect1n2=0;
      rect1n3=0;
      rect1n4=0;
      rect1n5=0;
      rect1n6=0;
      rect1n7=0;
      rect1n8=0;
      rect1n9=200;
      rect1n10=0;

      col1R=17;
      col1G=247;
      col1B=234;
    }

    //colore 10

    if (mouseX>= asse1B-basecolore/2 &&
      mouseX<= asse1B+basecolore/2 &&
      mouseY>= porzione6*5 -basecolore/2 &&
      mouseY<= porzione6*5 +basecolore/2) {

      rect1n1=0;
      rect1n2=0;
      rect1n3=0;
      rect1n4=0;
      rect1n5=0;
      rect1n6=0;
      rect1n7=0;
      rect1n8=0;
      rect1n9=0;
      rect1n10=200;

      col1R=0;
      col1G=255;
      col1B=0;
    }

    //colore 1B

    if (mouseX>= asse2A-basecolore/2 &&
      mouseX<= asse2A+basecolore/2 &&
      mouseY>= porzione6 -basecolore/2 &&
      mouseY<= porzione6+basecolore/2) {

      rect2n1=200;
      rect2n2=0;
      rect2n3=0;
      rect2n4=0;
      rect2n5=0;
      rect2n6=0;
      rect2n7=0;
      rect2n8=0;
      rect2n9=0;
      rect2n10=0;

      col2R=255;
      col2G=255;
      col2B=255;
    }

    //colore 2B

    if (mouseX>= asse2A-basecolore/2 &&
      mouseX<= asse2A+basecolore/2 &&
      mouseY>= porzione6*2 -basecolore/2 &&
      mouseY<= porzione6*2+basecolore/2) {

      rect2n1=0;
      rect2n2=200;
      rect2n3=0;
      rect2n4=0;
      rect2n5=0;
      rect2n6=0;
      rect2n7=0;
      rect2n8=0;
      rect2n9=0;
      rect2n10=0;

      col2R=246;
      col2G=255;
      col2B=0;
    }

    //colore3B

    if (mouseX>= asse2A-basecolore/2 &&
      mouseX<= asse2A+basecolore/2 &&
      mouseY>= porzione6*3 -basecolore/2 &&
      mouseY<= porzione6*3 +basecolore/2) {

      rect2n1=0;
      rect2n2=0;
      rect2n3=200;
      rect2n4=0;
      rect2n5=0;
      rect2n6=0;
      rect2n7=0;
      rect2n8=0;
      rect2n9=0;
      rect2n10=0;

      col2R=255;
      col2G=213;
      col2B=0;
    }

    //colore 4B

    if (mouseX>= asse2A-basecolore/2 &&
      mouseX<= asse2A+basecolore/2 &&
      mouseY>= porzione6*4 -basecolore/2 &&
      mouseY<= porzione6*4 +basecolore/2) {

      rect2n1=0;
      rect2n2=0;
      rect2n3=0;
      rect2n4=200;
      rect2n5=0;
      rect2n6=0;
      rect2n7=0;
      rect2n8=0;
      rect2n9=0;
      rect2n10=0;

      col2R=255;
      col2G=115;
      col2B=0;
    }

    //colore 5B

    if (mouseX>= asse2A-basecolore/2 &&
      mouseX<= asse2A+basecolore/2 &&
      mouseY>= porzione6*5 -basecolore/2 &&
      mouseY<= porzione6*5 +basecolore/2) {

      rect2n1=0;
      rect2n2=0;
      rect2n3=0;
      rect2n4=0;
      rect2n5=200;
      rect2n6=0;
      rect2n7=0;
      rect2n8=0;
      rect2n9=0;
      rect2n10=0;

      col2R=255;
      col2G=0;
      col2B=0;
    }

    //colore 6B

    if (mouseX>= asse2B-basecolore/2 &&
      mouseX<= asse2B+basecolore/2 &&
      mouseY>= porzione6 -basecolore/2 &&
      mouseY<= porzione6+basecolore/2) {

      rect2n1=0;
      rect2n2=0;
      rect2n3=0;
      rect2n4=0;
      rect2n5=0;
      rect2n6=200;
      rect2n7=0;
      rect2n8=0;
      rect2n9=0;
      rect2n10=0;

      col2R=245;
      col2G=173;
      col2B=238;
    }

    //colore 7B

    if (mouseX>= asse2B-basecolore/2 &&
      mouseX<= asse2B+basecolore/2 &&
      mouseY>= porzione6*2 -basecolore/2 &&
      mouseY<= porzione6*2+basecolore/2) {

      rect2n1=0;
      rect2n2=0;
      rect2n3=0;
      rect2n4=0;
      rect2n5=0;
      rect2n6=0;
      rect2n7=200;
      rect2n8=0;
      rect2n9=0;
      rect2n10=0;

      col2R=250;
      col2G=0;
      col2B=255;
    }

    //colore 8B

    if (mouseX>= asse2B-basecolore/2 &&
      mouseX<= asse2B+basecolore/2 &&
      mouseY>= porzione6*3 -basecolore/2 &&
      mouseY<= porzione6*3 +basecolore/2) {

      rect2n1=0;
      rect2n2=0;
      rect2n3=0;
      rect2n4=0;
      rect2n5=0;
      rect2n6=0;
      rect2n7=0;
      rect2n8=200;
      rect2n9=0;
      rect2n10=0;

      col2R=0;
      col2G=0;
      col2B=255;
    }

    //colore 9B

    if (mouseX>= asse2B-basecolore/2 &&
      mouseX<= asse2B+basecolore/2 &&
      mouseY>= porzione6*4 -basecolore/2 &&
      mouseY<= porzione6*4 +basecolore/2) {

      rect2n1=0;
      rect2n2=0;
      rect2n3=0;
      rect2n4=0;
      rect2n5=0;
      rect2n6=0;
      rect2n7=0;
      rect2n8=0;
      rect2n9=200;
      rect2n10=0;

      col2R=17;
      col2G=247;
      col2B=234;
    }

    //colore 10B

    if (mouseX>= asse2B-basecolore/2 &&
      mouseX<= asse2B+basecolore/2 &&
      mouseY>= porzione6*5 -basecolore/2 &&
      mouseY<= porzione6*5 +basecolore/2) {

      rect2n1=0;
      rect2n2=0;
      rect2n3=0;
      rect2n4=0;
      rect2n5=0;
      rect2n6=0;
      rect2n7=0;
      rect2n8=0;
      rect2n9=0;
      rect2n10=200;

      col2R=0;
      col2G=255;
      col2B=0;
    }

    if (colOK1B==200) {
      if (mouseX>= 180-baseOK/2 &&
        mouseX<= 180+baseOK/2 &&
        mouseY>=hOK-altezzaOK/2 &&
        mouseY<=hOK+altezzaOK/2) {
        scrittaprontocolore1=200;
        colOK1B=40;
      }
    }
    if (colOK2B==200) {
      if (mouseX>= (width-180)-baseOK/2 &&
        mouseX<= (width-180)+baseOK/2 &&
        mouseY>=hOK-altezzaOK/2 &&
        mouseY<=hOK+altezzaOK/2) {
        scrittaprontocolore2=200;
        colOK2B=40;
      }
    }
    
  }
}

void keyPressed() {

  posh1= posh1+velPlayer1;
  posh2= posh2+velPlayer2;

  switch(keyCode) {
  case 87:
    velPlayer1=-5;
    break;

  case 83:
    velPlayer1=5;
    break;

  case 38:
    velPlayer2=-5;
    break;

  case 40:
    velPlayer2=5;
    break;
  }
}

void keyReleased() {

   if (keyCode==87) {
    if (velPlayer1==5) velPlayer1=5;
    if (velPlayer1==-5) velPlayer1=0;
  }

  if (keyCode==83) {
    if (velPlayer1==5) velPlayer1=0;
    if (velPlayer1==-5) velPlayer1=-5;
  }

  if (keyCode==38) {
    if (velPlayer2==5) velPlayer2=5;
    if (velPlayer2==-5) velPlayer2=0;
  }

  if (keyCode==40) {
    if (velPlayer2==5) velPlayer2=0;
    if (velPlayer2==-5) velPlayer2=-5;
  }
}
