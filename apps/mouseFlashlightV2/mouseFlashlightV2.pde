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
      color pixelColor = img.pixels[x+y*width];
      float r = red(pixelColor);
      float g = green(pixelColor);
      float b = blue(pixelColor);
      float factor = map(distanceFromMouse, 0, 150, 2, 0);
      pixels[x+y*width] = color(r*factor, g*factor, b*factor);
    }
  }
  updatePixels();
}