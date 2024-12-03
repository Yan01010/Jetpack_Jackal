class start{
  
  start(){
    
  }
  
  void display(){
    fill(255);
    textSize(48);
    textAlign(CENTER, CENTER);
    text("Jetpack Jackal", width / 2, height / 2 - 60);
  
    textSize(18);
    //text("Press SPACE to fly", width / 2, height / 2 - 10);
    //text("Click the Start button to begin", width / 2, height / 2 + 20);
    }
    
    void button(){
      fill(0, 200, 0);
      rect(width / 2 - 50, height / 2 + 60, 100, 40, 10); // Rounded rectangle
      fill(255);
      textSize(24);
      text("Start", width / 2, height / 2 + 80);
    }
  
}
