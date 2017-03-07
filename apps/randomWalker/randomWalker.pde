Walker walker;
void setup() {
  size(800, 600);
  background(255);
  walker = new Walker();
}

void draw() {
  walker.walk();
  walker.draw();
}