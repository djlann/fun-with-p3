float t = 0;
float t2 = 1000;
void setup() {
  size(800, 600);
  
}

void draw() {
  background(0);
  fill(255);
  t += 0.01;
  t2 += 0.01;
  float x = noise(t);
  float y = noise(t2);
  float w = map(x, 0, 1, 0, width);
  float h = map(y, 0, 1, 0, height);
  ellipse(w, h, 40, 40);
}