

void setup() {

  size(480, 480);
  background(0);
  smooth();
}


void draw() {

  float weight = dist(mouseX, mouseY, pmouseX, pmouseY);

  println(weight);
  stroke(255,100);
  strokeWeight(weight);
  line(mouseX, mouseY, pmouseX, pmouseY);
}