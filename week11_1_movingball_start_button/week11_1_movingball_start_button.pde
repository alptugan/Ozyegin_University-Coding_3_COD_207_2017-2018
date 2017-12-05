float x;
float y;
float dx = 1;
float dy = 1;

float accx = 0.5;
float accy = 0.8;

float bw = 150;
float bh = 30;
String bTxt = "START";


Boolean scene1 = true;
Boolean scene2 = false;

void setup() {
  size(600, 600);

  x = width*0.5;
  y = height *0.5;
}

void draw() {
  background(255);

  if (scene2 == true) {
    x = x+accx*dx;
    y = y +accy*dy;

    if (x > width || x < 0)
    {
      accx = random(0.1, 5);
      dx = dx*-1;
    }

    if ( y > height || y < 0) {
      accy = random(0.1, 5);
      dy = dy*-1;
 
    }


    fill(0);
    noStroke();
    ellipse(x, y, 30, 30);
  }

  if (scene1 == true) {
    startButton();
  }
}

void startButton() {
  pushMatrix();
  translate(width/2 - bw/2, height/2 - bh/2);
  fill(#2ECC71);


  noStroke();
  rect(0, 0, bw, bh);

  fill(255);
  text(bTxt, bw/2 - textWidth(bTxt)/2, 18 );
  popMatrix();
}

void mousePressed() {
  if(mouseX > width/2 - bw/2 && mouseX < width/2 - bw/2 + bw
  && mouseY > height/2 - bh/2 && mouseY < height/2 - bh/2 + bh) {
    scene1 = false;
    scene2 = true;
  }
}