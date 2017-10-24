void setup() {
  size(600,600);
}

void draw() {
  background(0);
  
  noStroke();
  // without push/pop matrix function - you need to reverse back the rotation to default value
  // Delete comment characters to disable
  /*rotate(radians(30));
  rect(100,100,50,50);
  rotate(radians(-30));*/
  
  // By using pushMatrix() and popMatrix() you don't need to reverse back the matrix operation
  // You can keep the translation as it is.
  // rotate from top-left
  pushMatrix();
  translate(100,100);
  rotate(radians(frameCount));
  rect(0,0,50,50);
  popMatrix();
  
  // By using pushMatrix() and popMatrix() you don't need to reverse back the matrix operation
  // You can keep the translation as it is.
  // rotate from center
  
  translate(width*0.5,height*0.5);
  rotate(radians(frameCount));
  pushMatrix();
  translate(125,125);
  rotate(radians(frameCount));
  rect(-25,-25,50,50);
  popMatrix();
  
  pushStyle();
  fill(255,0,0,150);
  ellipse(100,100,50,50);
  popStyle();
}