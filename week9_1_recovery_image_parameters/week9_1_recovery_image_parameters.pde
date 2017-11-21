PImage img;
float imgRatio;
float h;
float w;

void setup() {
  size(400, 400);
  //img = loadImage("https://i.pinimg.com/564x/6a/49/d3/6a49d3aae813f8bba4fdc71da3fda9a0.jpg");
  img = loadImage("img.jpg");
  h = img.height;
  w = img.width;

  imgRatio = w / h;
  println(imgRatio);
}


void draw() {

  image(img, 0, 0, width*imgRatio, height);
}