class jackal{
  PImage jFly;
  PImage jStill;
  float jY, jVel;
  float jX = 100;
  float gravity = 0.6;
  float lift = -10;
  
  jackal(){
    jFly = loadImage("jackal_fly.png");
    jStill = loadImage("jackal_still.png");
    jStill.resize(140, 140);
    jFly.resize(140, 140);
  }
  
  //display jackal, when press space, display jackal flying, if not, 
  //display jackal still
  void display(){
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
}
