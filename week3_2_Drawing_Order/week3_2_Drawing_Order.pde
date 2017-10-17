// Drawing arc
void setup() {
  size(480, 120);
}

void draw() {
  background(255);


  rect(160, 30, 260, 20);
  // The ellipse draws on top of the rectangle
  // because it comes after in the code
  ellipse(140, 0, 190, 190);
}