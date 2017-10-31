int w = 40;
int h = 80;
float mappedValue;
float mappedRad;
int multiplier = 1;

void setup() {

  size(600, 600);
}


void draw() {
  background(255);
/*
  rect(0, 0, w, h);
  rect(w, 0, w, h);
  rect(w*2, 0, w, h);
  rect(w*3, 0, w, h);
  rect(w*4, 0, w, h);
  rect(w*5, 0, w, h);
  rect(w*6, 0, w, h);
  rect(w*7, 0, w, h);
  rect(w*8, 0, w, h);
  rect(w*9, 0, w, h);*/
  
  mappedValue = map(mouseX,0,width,0,255);
  fill(255,0,mappedValue,255);
  //println("mouseX: " + mouseX + "----" + "mappedValue: " + mappedValue);
  for(int i = 0; i < 10; i = i +1) {
    rect((w)*i, 0, w, h);
  }
  
  
  //mappedRad = map(mouseX,0,600,0,600);
  
  
  if(mappedRad > 200) {
    multiplier = -1;
    println("greater than 200");
  }
  
  if(mappedRad < 0){
    multiplier = 1;
     println("lower than 0");
  }
  
  mappedRad = mappedRad + 1 * multiplier; 
  
  ellipse(300,300,mappedRad,mappedRad);
  
  //println(mappedRad);
  
  
  
  
  
  
  
  
}