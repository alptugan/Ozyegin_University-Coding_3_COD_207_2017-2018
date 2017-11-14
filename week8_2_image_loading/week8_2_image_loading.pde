PImage darwin;

void setup() {
  size(800,600);  
  darwin = loadImage("yuklenecek_imaj.jpg");
  
}

void draw() {
  background(0);
  image(darwin,0,0);
}