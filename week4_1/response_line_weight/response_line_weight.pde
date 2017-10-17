

void setup() {

  size(480, 480);
  background(0);
  smooth();
}


void draw() {
  //background(0);
  //noStroke();
  
  //ellipse(mouseX,mouseY,15,15);
  stroke(255);
  line(mouseX, mouseY,pmouseX,pmouseY);
}