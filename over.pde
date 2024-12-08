class over{
  
  over(){
    
  }
  
  void display(){
    rectMode(CENTER);
    noStroke();
    fill(255, 255, 255, 200);
    rect(200, 300, 250, 150, 20);
    fill(0);
    textSize(38);
    textAlign(CENTER, CENTER);
    text("Game Over", width / 2, height / 2 - 20);
    textSize(24);
    text("Press R to Restart", width / 2, height / 2 + 20);
  }
  
}
