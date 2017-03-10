class Blob {
  PVector location, velocity, acceleration;
  int radius;
  float maxV;
  
  Blob(float mV, int r) {
    maxV = mV;
    radius = r;
    location = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
  }
  
  void move(PVector mouse) {
    acceleration = mouse.sub(location);
    acceleration.mult(0.01);
    acceleration.limit(0.05);
    velocity.add(acceleration);
    location.add(velocity);
  }
  
  void draw() {
    fill(255);
    ellipse(location.x, location.y, radius, radius);
  }
}