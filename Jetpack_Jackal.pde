start st;
jackal j;
over over;
obstacle ob;

boolean menu = true;
boolean gameOver = false;
boolean gameStart = false;

void setup() {
  size(400, 600);
  st = new start();
  j = new jackal();
  over = new over();
  ob = new obstacle();
}

void draw(){
  background(0);
  
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
   ob.display();
   j.display();
   j.run();
   }
   
   //collision detection between jackal and obstacle
  if (j.jY > height || j.jY < 0 || 
  (j.jX + 40 > ob.obX && j.jX < ob.obX + ob.obWidth && 
  (j.jY < ob.gapY - ob.gapHeight / 2 || j.jY + 40 > ob.gapY + ob.gapHeight / 2))){
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
  ob.gapY = random(180, height - 180);
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
