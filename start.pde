class start{
  PImage tt;
  PImage jFly;
  //position for jackal
  PVector position;
  //velocity for jackal
  PVector velocity; 
  //amplitude of the oscillation
  float amplitude = 15;
  //angle for sine wave
  float angle = 0; 
  //speed of oscillation
  float speed = 0.05; 
  //opacity for text
  float opacity;
  //min opacity for text
  float minOpacity = 50;
  //max opacity for text
  float maxOpacity = 255;
  
  start(){
    tt = loadImage("title.png");
    tt.resize(250, 250);
    jFly = loadImage("jackal_fly.png");
    jFly.resize(330, 330);
    
    //initialize position for jackal
    position = new PVector(180, 190);
    velocity = new PVector(0, 0);
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
    
    //draw title and jackal
    imageMode(CENTER);
    image(jFly, position.x, position.y);
    image(tt, 250, 250);
    
    //jackal moving
    //calculate oscillation using sine wave
    float offsetY = sin(angle) * amplitude;
    position.y = 190 + offsetY;
    //update angle for smooth motion
    angle += speed;
    
    //calculate oscillating text opacity using sine wave
    opacity = map(sin(angle), -1, 1, minOpacity, maxOpacity);
  
    fill(0, 0, 0, opacity);
    textSize(48);
    textAlign(CENTER, CENTER);
    textSize(18);
    text("Press SPACE to fly", width / 2, 560);
    text("Click the Start button to begin", width / 2, 580);
    }
    
    void button(){
      rectMode(CORNER);
      fill(0, 200, 0);
      stroke(0);
      strokeWeight(2);
      rect(width / 2 - 50, 450, 100, 40, 10);
      fill(0);
      textSize(24);
      text("START", width / 2, 470);
    }
  
}
