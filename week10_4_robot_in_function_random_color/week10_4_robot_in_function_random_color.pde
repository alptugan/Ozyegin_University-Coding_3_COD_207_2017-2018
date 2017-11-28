float xb;
float yb;

float x;
float y;

float pct = 0.09;
float mult = 0;

void setup() {

  size(800, 800);
}

void draw() {

  xb = 0;
  yb = 0;

  x = x + (xb-x)*pct;
  y = y + (yb-y)*pct;

  background(255);

  // draw a single robot
  //drawMycustomRobot(x,y);

  // draw 30 robots
  float nx = 0;
  float ny = 0;
  for (int i = 0; i < 120; i++) {
    nx = (80*(i % 11));     
    
    if (i % 11 == 0 && i != 0) {
      ny = ny + 160;
    }
    
    drawMycustomRobot(nx, ny,random(255),random(255),random(255));
  }
}

void drawMycustomRobot(float xpos, float ypos, float r,float g,float b) {
  pushMatrix();

  //translate(mouseX,mouseY);
  translate(xpos - 50 + 25, ypos - 150 + 75);
  scale(0.5, 0.5);
  // antenne
  noStroke();
  fill(0);
  ellipse(44, 3, 6, 6);
  stroke(0);
  line(44, 3, 44, 35);

  //remove stroke
  noStroke();
  rect(42, 36, 5, 4);

  // head
  fill(r,g,b);
  arc(44, 76, 72, 72, PI, PI*2, PIE);

  // draw remaining part
  rect(8, 76, 72, 72);

  // draw round orange rectange
  // first set fill color
  fill(#FF931E);
  rect(12, 65, 64, 41, 12);

  // draw eyes
  // left eye
  // change fill color to white
  fill(#ffffff);
  ellipse(27, 85, 24, 24);
  fill(#000000);
  ellipse(30, 88, 7, 7);

  // draw eyes
  // right eye
  // change fill color to white
  fill(#ffffff);
  ellipse(60, 85, 24, 24);
  fill(#000000);
  ellipse(55, 88, 7, 7);

  // draw ears
  // left ear
  rect(3, 81, 5, 21);
  // right ear
  rect(80, 81, 5, 21);

  // draw mouth, chage fill color to white
  fill(#ffffff);
  // first row of teeth
  rect(15, 114, 10, 10);
  rect(15 + (2 + 10), 114, 10, 10);
  rect(15 + (2 + 10)*2, 114, 10, 10);
  rect(15 + (2 + 10)*3, 114, 10, 10);
  rect(15 + (2 + 10)*4, 114, 10, 10);
  //second row of teeth
  rect(15 + (2 + 10), 126, 10, 10);
  rect(15 + (2 + 10)*2, 126, 10, 10);
  rect(15 + (2 + 10)*3, 126, 10, 10);

  // draw chin & change color
  fill(#FF931E);
  rect(5, 143, 79, 7, 2);

  // draw neck & change color
  fill(#000000);
  rect(40, 150, 10, 6);

  // draw body & change color
  fill(r,g,b);
  rect(16, 156, 55, 66);

  // draw left shoulder
  fill(#000000);
  rect(8, 166, 8, 8);

  // draw left arm & change color to blue
  fill(r,g,b);
  rect(0, 166, 8, 61);

  // draw right shoulder
  fill(#000000);
  rect(71, 166, 8, 8);

  // draw right arm & change color to blue
  fill(r,g,b);
  rect(79, 166, 8, 61);

  // left leg part
  fill(#000000);
  rect(22, 222, 8, 8);

  // left leg
  fill(r,g,b);
  rect(22, 230, 8, 61);

  // right leg part
  fill(#000000);
  rect(58, 222, 8, 8);

  // right leg
  fill(r,g,b);
  rect(58, 230, 8, 61);

  // left foot
  fill(#000000);
  rect(19, 291, 15, 7);
  // right foot
  rect(55, 291, 15, 7);
  popMatrix();
}