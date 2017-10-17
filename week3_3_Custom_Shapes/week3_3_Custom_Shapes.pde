// Drawing custom shape
void setup() {
  size(480, 480);
}

void draw() {
  background(255);

  // start custom shape
  beginShape();
  vertex(10, 0); // first vertex point ot create rect mesh
  vertex(110, 0);
  vertex(110, 80);
  vertex(10, 80);
  endShape(); // 

  // start custom shape with CLOSE option
  beginShape();
  vertex(120, 0); // first vertex point ot create rect mesh
  vertex(230, 0);
  vertex(230, 80);
  vertex(120, 80);
  endShape(CLOSE); //

  
}