float x;
float y;

float x2;
float y2;

float xb;
float yb;

float pct = 0.01;

void setup() {
  size(400, 400);
}


void draw() {
  background(255);
  xb = 300;
  yb = 300;

  // expo moving algorithm
  x = x + (xb - x) * pct;
  y = y + (yb - y) * pct;

  // linear moving alogrithm
  x2 = x2 + 1;
  y2 = y2 + 1;

  // expo moving ellipse
  fill(#3498DB);
  noStroke();
  ellipse(x, y, 40, 40);

   // To stop black ellipse
   if(x2 > xb || y2 > yb) {
     x2 = xb;
     y2 = yb;
   }
  // Linear moving ellipse
  fill(0);
  ellipse(x2,y2,40,40);
}