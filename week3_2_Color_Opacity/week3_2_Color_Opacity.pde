// Drawing arc
void setup() {
  size(480, 120);
}

void draw() {
  background(255);

  
  // The ellipse draws on top of the rectangle
  // because it comes after in the code
  fill(0);
  ellipse(140, 0, 190, 190);
  
  fill(255,0,0);
  rect(160, 30, 260, 20);
}