float x;
float y;
float speed = 10;
int direction = 1;

float x2;
float y2;
float speed2 = 5;
int direction2 = -1;

String str = "SOMETHING IS MOVING BACK & FORTH";
String str2 = "Be as you wish to seem";

float red = 255;
float green = 255;
float blue = 255;

void setup() {
  size(600, 600);
  textSize(64);
  y = 60;
  x = -textWidth(str);
  
  // Second string parameters
  y2 = y * 2;
  x2 = width;
  
  //println("starting pos x: " + x);
}
void draw() {
  background(0);
  
  x = x + (speed * direction);
  x2 = x2 + (speed2 * direction2);
  
  // Condition for the first string: str
  if(x > width) {
    x = -textWidth(str);
  }
  
  fill(255);
  text(str, x, y);
  
  // Condition for the 2nd string: str2
  if(x2 < -textWidth(str2)) {
    x2 = width;
    red = random(255);
    green = random(255);
    blue = random(255);
    speed = random(2,20);
    //direction2 = direction2 * -1;
  }
  
  fill(red,green,blue);
  text(str2, x2, y2);
}