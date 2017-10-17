void setup() {
  size(480, 480);
  background(0);
  smooth();
}


void draw() {

  float weight = dist(mouseX, mouseY, pmouseX, pmouseY);
  stroke(255,100);
  // Mapping strokeWeight value between 1-10
  float mappedVal = map(weight, 0, 20,1, 5);
  strokeWeight(mappedVal);
  
  line(mouseX+30, mouseY-10, pmouseX, pmouseY);
}

void mouseClicked() {
   //rintln("somebody clicks");
  background(0);
}