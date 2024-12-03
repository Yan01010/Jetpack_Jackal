class obstacle{
  float obX, obWidth = 80;
  float gapHeight = 220;
  float gapY;
  float obSpeed = 3;
  
  obstacle(){
    
  }
  
  void display(){
     // Pipe movement and drawing
     obX -= obSpeed;
     if (obX < -obWidth) {
       obX = width;
       gapY = random(180, height - 180);
     }
     
     fill(34, 139, 34);
     rect(obX, 0, obWidth, gapY - gapHeight / 2);
     rect(obX, gapY + gapHeight / 2, obWidth, height);
  }
}
