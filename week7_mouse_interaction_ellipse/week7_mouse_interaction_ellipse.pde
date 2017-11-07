int x = 300;
int y = 300;
int rad = 40;
boolean isClicked = false;

void setup() {
  size(600, 600);
}
void draw() {
  background(0);

  if (isClicked == false) {
    fill(#ffffff);
  } else {
    fill(#00ff00);
  }
  ellipse(x, y, rad, rad);
}

void mouseClicked() {
  float d = dist(mouseX, mouseY, x, y);

  if ( d < rad*0.5) {
    isClicked = true;
    //println("somebody clicked me");
  } else {
    isClicked = false;
    //println("missed clicked");
  }

  //println("mouse x pos: " + mouseX);
  //println("mouse y pos: " + mouseY);
}