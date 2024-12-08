class background{
  float bg1x;
  float bg1Speed = 4;
  PImage bg1;
  PImage bg2;
  PImage bg3;
  PImage bg4;
  PImage bg5;
 
  background(){
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
  }
  
  void bg1(){
    imageMode(CORNER);
    image(bg1, bg1x, 0);
    bg1x -= bg1Speed;
    
    if (bg1x <= -1400){
      bg1x = 0;
    }
  }
  
  void bg(){
    imageMode(CORNER);
   image(bg5, 0, 0); 
   image(bg4, 0, 0); 
   image(bg3, 0, 0); 
   image(bg2, 0, 0); 
  }
}
