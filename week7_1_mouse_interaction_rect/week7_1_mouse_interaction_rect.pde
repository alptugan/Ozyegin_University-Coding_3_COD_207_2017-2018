float x;
float y;
int w = 50;
int h = 100;
boolean isClicked = false;

void setup() {
  size(600, 600);
}
void draw() {
  background(0);
  x = width*0.5 - w*0.5;
  y = height*0.5 - h*0.5;
  rect(x,y,w,h);
  
}

void mouseClicked() {
  if(mouseY > y && mouseY < y + h && mouseX > x && mouseX < x + w) {
    isClicked = true;
  }else{
   isClicked = false; 
  }
}