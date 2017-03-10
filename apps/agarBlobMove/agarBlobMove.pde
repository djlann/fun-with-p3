Blob blob;
PVector mouse;
void setup() {
  size(800, 600);
  blob = new Blob(0.1, 50);
  mouse = new PVector(0, 0);
}

void draw() {
  mouse.x = mouseX;
  mouse.y = mouseY;
  background(0);
  blob.move(mouse);
  blob.draw();
}