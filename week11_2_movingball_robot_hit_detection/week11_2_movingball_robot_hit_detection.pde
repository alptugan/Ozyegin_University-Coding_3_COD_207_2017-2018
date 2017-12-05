float x;
float y;
float dx = 1;
float dy = 1;

float accx = 0.5;
float accy = 0.8;

float bw = 150;
float bh = 30;
String bTxt = "START";

float radEnemy = 30;

Boolean scene1 = true;
Boolean scene2 = false;
Boolean scene3 = false;

// parameters for robot
float rw = 45;
float rh = 153;

void setup() {
  size(600, 600);

  x = width*0.5;
  y = height *0.5;
}

void draw() {
  background(255);

  if (scene2 == true) {
    // draw robot
    drawMycustomRobot(mouseX, mouseY, 52, 152, 219);
    
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
    ellipse(x, y, radEnemy, radEnemy);

    // Check hit detection with robot and enemy ball
    if (mouseX + rw/2 > x-radEnemy/2 && mouseX - rw/2 < x + radEnemy/2
      && mouseY + rh/2> y - radEnemy/2 && mouseY - rh/2 < y + radEnemy/2) {
        scene3 = true;
        scene1 = false;
        scene2 = false;
    }
  }

  if (scene1 == true) {
    startButton();
  }
  
  // Scene 3 content
  if(scene3 == true) {
    fill(255,0,0,150);
    rect(0,0,width,height); 
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
  if (mouseX > width/2 - bw/2 && mouseX < width/2 - bw/2 + bw
    && mouseY > height/2 - bh/2 && mouseY < height/2 - bh/2 + bh) {
    scene1 = false;
    scene2 = true;
    scene3 = false;
  }
}

void drawMycustomRobot(float xpos, float ypos, float r, float g, float b) {
  pushMatrix();

  //translate(mouseX,mouseY);
  translate(xpos - 50 + 25, ypos - 150 + 75);
  fill(255,0,0,50);
  rect(0,0,rw,rh);
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
  fill(r, g, b);
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
  fill(r, g, b);
  rect(16, 156, 55, 66);

  // draw left shoulder
  fill(#000000);
  rect(8, 166, 8, 8);

  // draw left arm & change color to blue
  fill(r, g, b);
  rect(0, 166, 8, 61);

  // draw right shoulder
  fill(#000000);
  rect(71, 166, 8, 8);

  // draw right arm & change color to blue
  fill(r, g, b);
  rect(79, 166, 8, 61);

  // left leg part
  fill(#000000);
  rect(22, 222, 8, 8);

  // left leg
  fill(r, g, b);
  rect(22, 230, 8, 61);

  // right leg part
  fill(#000000);
  rect(58, 222, 8, 8);

  // right leg
  fill(r, g, b);
  rect(58, 230, 8, 61);

  // left foot
  fill(#000000);
  rect(19, 291, 15, 7);
  // right foot
  rect(55, 291, 15, 7);
  popMatrix();
}