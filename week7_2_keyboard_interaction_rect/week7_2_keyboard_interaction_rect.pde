float x;
float y;
float w = 100;
float h = 50;
boolean isEnterPressed = false;
void setup() {
  size(600, 600);
}
void draw() {
  background(0);
  x = width * 0.5 - w*0.5;
  y = height *0.5 - h*0.5;

  if (isEnterPressed == true) {
    textSize(128);
    text("ENTER PRESSED", x, y);
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == ENTER) {
      isEnterPressed = true;
    }else{
      isEnterPressed = false;
    }
  }
}