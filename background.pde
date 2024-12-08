class background{
  float bg1x;
  float bg1Speed = 5;
  PImage bg1;
  float bg2x;
  float bg2Speed = 3;
  PImage bg2;
  float bg3x;
  float bg3Speed = 2;
  PImage bg3;
  float bg4x;
  float bg4Speed = 1;
  PImage bg4;
  float bg5x;
  float bg5Speed = 0.5;
  PImage bg5;
 
  background(){
    //resizing images
    bg1 = loadImage("bg1.png");
    bg1.resize(1800, 600);
    bg2 = loadImage("bg2.png");
    bg2.resize(1800, 600);
    bg3 = loadImage("bg3.png");
    bg3.resize(1800, 600);
    bg4 = loadImage("bg4.png");
    bg4.resize(1800, 600);
    bg5 = loadImage("bg5.png");
    bg5.resize(1800, 600);
    
    bg1x = 0;
    bg2x = 0;
    bg3x = 0;
    bg4x = 0;
    bg5x = 0;
  }
  
  void bg1(){
    imageMode(CORNER);
    image(bg1, bg1x, 0);
    bg1x -= bg1Speed;
    
    //if the border of background exceeds -1400, make it back to 400
    if (bg1x <= -1400){
      bg1x = 0;
    }
  }
  
  // same process for other backgrounds
  void bg(){
   imageMode(CORNER);
   image(bg5, bg5x, 0);
   bg5x -= bg5Speed;
   if (bg5x <= -1400){
      bg5x = 0;
    }
   
   image(bg4, bg4x, 0);
   bg4x -= bg4Speed;
   if (bg4x <= -1400){
      bg4x = 0;
    }
   
   image(bg3, bg3x, 0);
   bg3x -= bg3Speed;
   if (bg3x <= -1400){
      bg3x = 0;
    }
    
   image(bg2, bg2x, 0);
   bg2x -= bg2Speed;
   if (bg2x <= -1400){
      bg2x = 0;
    }
  }
}
