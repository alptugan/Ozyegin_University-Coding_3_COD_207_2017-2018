float x;
float y;
float dx = 1;
float dy = 1;

float accx = 0.5;
float accy = 0.8;

void setup() {
  size(600, 600);

  x = width*0.5;
  y = height *0.5;
}

void draw() {
  background(255);
  x = x+accx*dx;
  y = y +accy*dy;

  if (x > width || x < 0)
  {
    accx = random(0.1,5);
    dx = dx*-1;
  }

  if ( y > height || y < 0) {
    accy = random(0.1,5);
    dy = dy*-1;
  }


  fill(0);
  noStroke();
  ellipse(x, y, 30, 30);
}