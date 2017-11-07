float x;
float y;
boolean isSwitched = false;
int direction = -1;
String str = "SOMETHING IS MOVING AROUND";
void setup() {
  size(600, 600);
  y = 60;
  x = width;
}
void draw() {
  background(0);
  
  if( x < -textWidth() || x > width + 100) {
    direction = direction * -1;
  }
  
  x = x + (10 * direction);
  
  textSize(64);
  text(, x, y);
}