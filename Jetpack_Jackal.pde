PImage flyborder;
PImage fly2border;
start st;
jackal j;
over over;
obstacle ob;
background bg;
firefly fl;
//number of fireflies
int numFireflies = 15;
firefly[] fireflies;
selection slct;

boolean menu = true;
boolean gameOver = false;
boolean gameStart = false;
//selection menu
boolean select = false;
// selected bordered image visibility
boolean visible1 = false;
boolean visible2 = false;
//boolean jackal1 = false;

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
  slct = new selection();
  
  //selected jackals with border
  flyborder = loadImage("flyborder.png");
    flyborder.resize(200, 200);
    fly2border = loadImage("fly2border.png");
    fly2border.resize(200, 200);
}

void draw(){
  background(255);
  
  //display the start up menu and button
  if (menu){
  st.display(); 
  st.button();
  }
 //when mouse pressed, check if the mouse is in the button area
   if(mousePressed) {
     pressed(150,450,250,490);
     selected();
   }
  
  //if the game started, display jackal and obstacle
  if (visible1 && gameStart && !gameOver &&!select || visible2 && gameStart && !gameOver &&!select){
   bg.bg();
   for (firefly firefly : fireflies) {
    firefly.move();
    firefly.display();
   }
   ob.display();
   if (visible1){
   j.jackal1();
   }
   if (visible2){
     j.jackal2();
   }
   bg.bg1();
   }
   
   //collision detection between jackal and obstacle
  if (j.jY > height || j.jY < 0 || 
  (j.jX + 30 > ob.obX && j.jX < ob.obX + ob.obWidth && 
  (j.jY - 60 < ob.gapY - ob.gapHeight / 2 || j.jY + 60 > ob.gapY + ob.gapHeight / 2))){
   gameOver = true; 
   gameStart = false;
   select = false;
   menu = false;
  }
   
   //if the game is over, press r to restart the game from menu page
   if (gameOver && !menu && !gameStart &&!select){
    over.display();
    if ( keyPressed && key == 'r'){
     menu = true;
     gameOver = false;
     //reset the values for jackal and obstacle
     reset();
    }
  }
  
  //selection menu
  if (select && !menu && !gameStart && !gameOver){
    slct.display();
    slct.jackal1();
    slct.jackal2();
    
    //if selected jackal 1, display bordered image
    if (visible1){
      image(flyborder, slct.x1 -5, slct.y);
    }
    //if selected jackal 2, display bordered image
    if (visible2){
      image(fly2border, slct.x2 -5, slct.y);
    }
    
    if (visible1 && keyPressed && key == ' ' || visible2 && keyPressed && key == ' '){
     select = false;
     gameStart = true;
    }
  }
  
}

//reset variables
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
   select = true;
   menu = false;
   gameStart = false;
   }
}

void selected(){
  if ( mouseX > 20 && mouseX < 200 && mouseY > 110 && mouseY < 290){
    visible1 = !visible1;
    visible2 = false;
  }
  
  if ( mouseX > 210 && mouseX < 390 && mouseY > 110 && mouseY < 290){
    visible2 = !visible2;
    visible1 = false;
  }
}
