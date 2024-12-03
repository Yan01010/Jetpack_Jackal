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
  
  //display the start up menu
  if (menu){
  st.display();
  st.button();
  }
  
  //press on button to start the game
  if ( mousePressed && mouseX > width / 2 - 50 && mouseX < width / 2 + 50 &&
   mouseY > height / 2 + 60 && mouseY < height / 2 + 100){
    gameStart = true; 
    menu = false;
   }
  
  //if the game started, display jackal and obstacle
  if (gameStart && !gameOver){
   ob.display();
  
   j.display();
   j.run();
   }
   
   //if the game is over, press r to restart the game from menu page
   if (gameOver && !menu){
    over.display();
    if (keyPressed && key == 'r'){
     menu = true;
     gameOver = false;
     //reset the values for jackal and obstacle
     reset();
    }
  }
  
  //collision detection between jackal and obstacle
  if (j.jY > height || j.jY < 0 || 
       (j.jX > ob.obX && j.jX < ob.obX + ob.obWidth &&
       (j.jY < ob.gapY - ob.gapHeight / 2 || j.jY > ob.gapY + ob.gapHeight / 2))){
   gameOver = true; 
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
