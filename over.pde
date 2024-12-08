class over{
  float angle = 0; 
  //speed of oscillation
  float speed = 0.05; 
  //opacity for text
  float opacity;
  //min opacity for text
  float minOpacity = 50;
  //max opacity for text
  float maxOpacity = 255;
  over(){
    
  }
  
  void display(){
    background(0);
    
    //calculate oscillating text opacity using sine wave
    opacity = map(sin(angle), -1, 1, minOpacity, maxOpacity);
    fill(255, 255, 255, opacity);
    textSize(38);
    textAlign(CENTER, CENTER);
    text("Game Over", width / 2, height / 2 - 20);
    textSize(24);
    text("Press R to Restart", width / 2, height / 2 + 20);
    
    //update angle
    angle += speed;
  }
  
}
