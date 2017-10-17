int y = 60;
int d = 90;
int xPos = 300;

// Drawing custom shape
void setup() {
  size(480, 480);
  
}

void draw() {
  background(255);
  
  ellipse(xPos, y, d, d);    // Left
  ellipse(xPos + 100, y, d+10, d+10);  // Middle
  ellipse(xPos + 200, y, d, d);  // Right
}