class Walker {
  int x, y;
  
  Walker() {
    x = width/2;
    y = height/2;
  }
  
  void walk() {
    int dir = int(random(4));
    if(dir == 0){
      x++;
    } else if(dir == 1) {
      x--;
    } else if(dir == 2) {
      y++;
    } else {
      y--;
    }
    
    x = constrain(x, 0, width - 1);
    y = constrain(y, 0, height - 1);

  }
  
  void draw() {
    stroke(0);
    point(x, y);
  }
}