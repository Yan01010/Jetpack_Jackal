class firefly {
  PVector position;
  PVector velocity;
  PVector acceleration;
  float maxSpeed = 1;
  float brightness;
  float glowSpeed;

  firefly(float x, float y) {
    position = new PVector(x, y);
    //random initial velocity
    velocity = PVector.random2D(); 
    acceleration = new PVector(0, 0);
    //random initial brightness
    brightness = random(100, 255); 
    //random speed for glowing effect
    glowSpeed = random(0.5, 3); 
  }

  void move() {
    //random acceleration for fluttering motion
    acceleration = PVector.random2D().mult(0.2);

    velocity.add(acceleration);
    velocity.limit(maxSpeed);
    position.add(velocity);

    //keep the fireflies within the canvas
    if (position.x < 0) position.x = width;
    if (position.x > width) position.x = 0;
    if (position.y < 0) position.y = height;
    if (position.y > height) position.y = 0;

    //update brightness for glowing effect
    brightness += glowSpeed;
    if (brightness > 255 || brightness < 100) {
      //reverse glow direction
      glowSpeed *= -1; 
    }
  }

  void display() {
    //yellow glow with random variable
    fill(255, 255, 0, brightness);
    noStroke();
    //draw the firefly
    ellipse(position.x, position.y, 10, 10); 
  }
}
