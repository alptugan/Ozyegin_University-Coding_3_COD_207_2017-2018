float x;
float y;

float xb;
float yb;

float pct = 0.1;

void setup() {
  size(400,400);
  
}


void draw() {
  
  xb = 300;
  yb = 300;
  
  x = x + (xb - x) * pct;
  y = y + (yb - y) * pct;
  
  background(255);
  
  fill(#3498DB);
  noStroke();
  ellipse(x,y,40,40);
}