

void setup() {

  size(480, 480);
  smooth();
}


void draw() {
  background(255);
  noStroke();
  

  int i = 0;
  
  for (int y = 0; y <= height; y = y + 40) {
    for (int x = 0; x <= width; x += 40) {
      noStroke();
      fill(0, 255);
      //ellipse(x, y, 30, 30);
      
      fill(100, 255);
      //ellipse(x,y, 5,5);
      
      noFill();
      stroke(#ff0000);
      strokeWeight(1);
      ellipse(x, y, 160, 160);
      i ++;
      
      
    }
  }
  
  println(i);
}