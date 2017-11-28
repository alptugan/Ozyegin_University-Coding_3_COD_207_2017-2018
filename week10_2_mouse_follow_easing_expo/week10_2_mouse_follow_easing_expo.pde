float x;
float y;

float xb;
float yb;

float pct = 0.05;

void setup() {
  size(400, 400);
}


void draw() {
  background(255);
  xb = mouseX;
  yb = mouseY;

  // expo moving algorithm
  x = x + (xb - x) * pct;
  y = y + (yb - y) * pct;

  // expo moving ellipse
  fill(#3498DB);
  noStroke();
  ellipse(x, y, 40, 40);
  
 // stroke(#3498DB);
 // line(x,y,mouseX,mouseY);
}