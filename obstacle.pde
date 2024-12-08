class obstacle{
  float obX = width, obWidth = 100;
  float gapHeight = 280;
  float gapY = random(220, height - 220);
  float obSpeed = 3;
  
  //variable for score keeping
  int score = 0;
  
  obstacle(){
    
  }
  
  void display(){
     //obstacle movement and drawing, and gain 1 score when obstacle reaches screen border
     obX -= obSpeed;
     if (obX < -obWidth) {
       obX = width;
       gapY = random(220, height - 220);
       score++;
     }

     stroke(0);
     strokeWeight(1);
     fill(80, 50, 5);
     rect(obX, 0, obWidth, gapY - gapHeight / 2);
     rect(obX, gapY + gapHeight / 2, obWidth, height);

  }
  
  void score(){
    fill(255);
    textSize(24);
    textAlign(LEFT, TOP);
    text("Score: " + score, 10, 10);
  }
}
