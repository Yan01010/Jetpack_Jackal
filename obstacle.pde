class obstacle{
  float obX, obWidth = 100;
  float gapHeight = 280;
  float gapY;
  float obSpeed = 3;
  
  obstacle(){
    
  }
  
  void display(){
     // Pipe movement and drawing
     obX -= obSpeed;
     if (obX < -obWidth) {
       obX = width;
       gapY = random(220, height - 220);
     }
     
     stroke(0);
     strokeWeight(1);
     fill(80, 50, 5);
     rect(obX, 0, obWidth, gapY - gapHeight / 2);
     rect(obX, gapY + gapHeight / 2, obWidth, height);
  }
}
