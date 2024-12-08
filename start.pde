class start{
  PImage tt;
  
  start(){
    tt = loadImage("title.png");
    tt.resize(300, 300);
  }
  
  void display(){
    imageMode(CENTER);
    image(tt, 200, 230);
    fill(255);
    stroke(0);
    textSize(48);
    textAlign(CENTER, CENTER);
  
    textSize(18);
    text("Press SPACE to fly", width / 2, 560);
    text("Click the Start button to begin", width / 2, 580);
    }
    
    void button(){
      rectMode(CORNER);
      fill(0, 200, 0);
      strokeWeight(3);
      rect(width / 2 - 50, height / 2 + 60, 100, 40, 10); // Rounded rectangle
      fill(0);
      textSize(24);
      text("START", width / 2, height / 2 + 80);
    }
  
}
