class jackal{
  PImage jFly;
  PImage jStill;
  PImage jFly2;
  PImage jStill2;
  float jY = height / 2, jVel;
  float jX = 100;
  float gravity = 0.6;
  float lift = -10;
  
  jackal(){
    jFly = loadImage("jackal_fly.png");
    jStill = loadImage("jackal_still.png");
    jStill.resize(140, 140);
    jFly.resize(140, 140);
    jFly2 = loadImage("jackal_fly2.png");
    jStill2 = loadImage("jackal_still2.png");
    jStill2.resize(140, 140);
    jFly2.resize(140, 140);
  }
  
  //display jackal, when press space, display jackal flying, if not, 
  //display jackal still
  void jackal1(){
   jVel += gravity;
   jY += jVel;
   
   imageMode(CENTER);
   if (keyPressed && key == ' '){
    jVel = lift; 
    image(jFly, jX, jY);
   }else{
     image(jStill, jX, jY);
   }
  }
  
  //same for other jackal
  void jackal2(){
   jVel += gravity;
   jY += jVel;
   
   imageMode(CENTER);
   if (keyPressed && key == ' '){
    jVel = lift; 
    image(jFly2, jX, jY);
   }else{
     image(jStill2, jX, jY);
   }
  }
}
