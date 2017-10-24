void setup() {
  size(800, 140);
  strokeWeight(12);
  smooth();
}
void draw() {
  float mappedVal = map(mouseX, 0, width, 0, 255);
  float mappedVal2 = map(mouseY, 0, height, 0, 255);
  background(mappedVal, 0, mappedVal2);
  
  println("mappedVal: " + mappedVal);
  println("mappedVal2: " + mappedVal2);
  println("-----------------------");
}