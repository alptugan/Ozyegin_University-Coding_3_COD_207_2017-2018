float x;
float y;
float dx = 1;
float dy = 1;

void setup() {
  size(600,600);
  
  x = width*0.5;
  y = height *0.5;
  
}

void draw() {
  background(255);
  x = x+1*dx;
  y = y + 1*dy;
  
  if(x > width || x < 0)
  {
    
  }
  
  if( y > height || y < 0) {
    
  }
  
  
  fill(0);
  noStroke();
  ellipse(x,y,30,30);
}