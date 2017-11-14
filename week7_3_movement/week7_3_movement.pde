float x;
float y;
boolean isSwitched = false;
float speed = 5;
int direction = -1;
String str = "SOMETHING IS MOVING BACK & FORTH";

void setup() {
  size(600, 600);
  y = 60;
  x = width;
}
void draw() {
  background(0);
  
  if( x < -textWidth(str) || x > width + 100) {
    direction = direction * -1;
  }
  
  x = x + (100 * direction);
  
  textSize(64);
  text(str, x, y);
}