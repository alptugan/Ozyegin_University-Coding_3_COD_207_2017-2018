// Drawing arc
void setup() {
  size(800,800);
}

void draw() {
  background(255);
  
  arc(190, 60, 80, 80, 0, PI+HALF_PI);
  arc(190, 140, 80, 80, 0, PI+HALF_PI, CLOSE);
  arc(190, 220, 80, 80, 0, PI+HALF_PI, PIE);
}