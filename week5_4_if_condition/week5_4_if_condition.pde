void setup() {
  size(120, 120);
  smooth();
  //strokeWeight(30);
}
void draw() {
  background(204);
  
  if(mousePressed) {
    ellipse(width*0.5, height*0.5,50,50);
  }
  
  if(mousePressed == false){
    rect(width*0.5 - 25, height*0.5 -25,50,50);
  }
}