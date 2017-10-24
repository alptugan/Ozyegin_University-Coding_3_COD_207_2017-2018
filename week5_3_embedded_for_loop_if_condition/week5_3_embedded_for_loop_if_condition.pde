void setup() {
  size(480, 480);
  background(0);
  smooth();
}

void draw() {
  noStroke();
  for (int y = 0; y <= height; y += 1) {
    for (int x = 0; x <= width; x += 1) {
      //println(x);
      if (x % 2 == 0) {
        fill(255, 255);
        ellipse(x*40, y*40, 30, 30);
      }else{
        fill(255,0,255, 255);
        rect(x*40 - 10, y*40 - 10, 20, 20);
      }
      
      if (x % 3 == 0) {
        fill(255,0,0, 255);
        rect(x*40 - 15, y*40 - 15, 30, 30);
      }
    }
  }
}