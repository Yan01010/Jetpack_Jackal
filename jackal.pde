class jackal{
  float jY, jVel;
  float jX = 100;
  float gravity = 0.6;
  float lift = -10;
  
  jackal(){
    
  }
  
  void display(){
    fill(255);
    rect(jX, jY, 60, 60);
  }
  
  void run(){
   jVel += gravity;
   jY += jVel;
   
   if (keyPressed && key == ' '){
    jVel = lift; 
   }
  }
}
