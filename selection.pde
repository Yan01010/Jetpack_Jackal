class selection{
  PImage jFly;
  PImage jFly2;
  float x1 = 110, x2 = 300; 
  float y = 200;
  
  float angle = 0; 
  //speed of oscillation
  float speed = 0.05; 
  //opacity for text
  float opacity;
  //min opacity for text
  float minOpacity = 50;
  //max opacity for text
  float maxOpacity = 255;
  
  selection(){
    jFly = loadImage("jackal_fly.png");
    jFly.resize(180, 180);
    jFly2 = loadImage("jackal_fly2.png");
    jFly2.resize(180, 180);
  }
  
  void display(){
    background(110, 190, 255);
    
    //draw clouds
    noStroke();
    fill(230);
    ellipse(350, 460, 140, 140);
    ellipse(350, 550, 140, 140);
    ellipse(280, 500, 140, 140);
    
    fill(255);
    ellipse(25, 550, 200, 200);
    ellipse(100, 480, 140, 140);
    ellipse(200, 510, 120, 120);
    ellipse(260, 580, 120, 120);
    ellipse(160, 580, 120, 120);
    
    //calculate oscillating text opacity using sine wave
    opacity = map(sin(angle), -1, 1, minOpacity, maxOpacity);
    fill(0, 0, 0, opacity);
    textSize(24);
    text("Press SPACE to confirm selection", width / 2, height / 2 + 65);
    fill(0);
    textSize(40);
    textAlign(CENTER, CENTER);
    text("Select Your Jackal", width / 2, height / 2 + 25);
    
    //update angle
    angle += speed;
  }
  
  void jackal1(){
    image(jFly, x1, y);
  }
  
  void jackal2(){
    image(jFly2, x2, y);
  }
}
