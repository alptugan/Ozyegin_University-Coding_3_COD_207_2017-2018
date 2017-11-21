
void setup() {
  size(400,400);
}


void draw() {
  background(255);
  customRect();
  //println(calculateSum(120,20,100));
  println(calculateDivision(2,4));
  //customFunction();
}

void customFunction() {
  println("hi, I'm a custom function");
}

// Draws custom shape group
void customRect() {
  fill(0);
  noStroke();
  rect(0, 0, 30, 30);
  fill(50);
  rect(30, 0, 30, 30);
  fill(100);
  rect(60, 0, 30, 30);
}

// Has return type as int
// needs 3 parameters to calculate the total
int calculateSum(int a,int b,int c) {
  return (a+b+c)/3;
}


float calculateDivision(float a2,float b2) {
  float val;
  val = (a2 / b2);
  return val;
}