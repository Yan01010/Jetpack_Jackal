start st;
jackal j;
over over;
obstacle ob;
background bg;
firefly fl;
//number of fireflies
int numFireflies = 20;
firefly[] fireflies;

boolean menu = true;
boolean gameOver = false;
boolean gameStart = false;

void setup() {
  size(400, 600);
  st = new start();
  j = new jackal();
  over = new over();
  ob = new obstacle();
  bg = new background();
  fireflies = new firefly[numFireflies];
  for (int i = 0; i < numFireflies; i++) {
    fireflies[i] = new firefly(random(width), random(height));
  }
}

void draw(){
  background(255);
  
  //display the start up menu and button
  if (menu){
  st.display(); 
  st.button();
  }
 //when mouse pressed, check if the mouse is in the button area
   if( mousePressed) {
     pressed(150,360,250,400);
   }
  
  //if the game started, display jackal and obstacle
  if (gameStart && !gameOver){
   bg.bg();
   for (firefly firefly : fireflies) {
    firefly.move();
    firefly.display();
   }
   ob.display();
   j.display();
   bg.bg1();
   }
   
   //collision detection between jackal and obstacle
  if (j.jY > height || j.jY < 0 || 
  (j.jX + 30 > ob.obX && j.jX < ob.obX + ob.obWidth && 
  (j.jY - 60 < ob.gapY - ob.gapHeight / 2 || j.jY + 60 > ob.gapY + ob.gapHeight / 2))){
   gameOver = true; 
  }
   
   //if the game is over, press r to restart the game from menu page
   if (gameOver && !menu){
    over.display();
    if ( keyPressed && key == 'r'){
     menu = true;
     gameOver = false;
     //reset the values for jackal and obstacle
     reset();
    }
  }
}


void reset(){
  j.jY = height / 2;
  j.jVel = 0;
  ob.obX = width;
  ob.gapY = random(220, height - 220);
  //display menu without starting game
  menu = true;
  gameStart = false;
}

//if mouse pressed on button, start the game
void pressed(int x,int y, int x2, int y2){
 if( x < mouseX && x2 > mouseX && y < mouseY && y2 > mouseY){
   gameStart = true;
   menu = false;
   }
}
