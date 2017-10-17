int ayPos = 40;
int byPos = 80;

void setup() {

  size(480, 120);
  smooth();
}


void draw() {

  strokeWeight(8);
/*
  line(20, ayPos, 80, byPos);
  line(80, ayPos, 140, byPos);
  line(140, ayPos, 200, byPos);
  line(200, ayPos, 260, byPos);
  line(260, ayPos, 320, byPos);
  line(320, ayPos, 380, byPos);
  line(380, ayPos, 440, byPos);
*/

  for (int i = 0; i < 7; i = i + 1) {
    //println(i);
    line(20 + (60*i), ayPos, 80 + (60*i), byPos);
    
  }
  //println("------------------");
}