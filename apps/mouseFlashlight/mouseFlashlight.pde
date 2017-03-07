PImage img;
void setup() {
  size(640, 480);
  img = loadImage("tibia.png");
}

void draw() {
  background(0);
  loadPixels();
  for(int x = 0; x < width; x++) {
    for(int y = 0; y < height; y++) {
      float distanceFromMouse = dist(x, y, mouseX, mouseY);
      distanceFromMouse = map(distanceFromMouse, 0, sqrt(width*width + height*height), 0, 1);
      if(distanceFromMouse < 0.1) {
        color pixelColor = img.pixels[x+y*width];
        pixels[x+y*width] = pixelColor;
      }
    }
  }
  updatePixels();
}