void setup(){
  size(500,500);
  noStroke();
  background(255);
  smooth();
}

void draw(){
  for(int i=0;i<100;i=i+10){
      randomColor();
      ellipse(mouseX,mouseY,i,i);}
}

void randomColor(){
  fill((int)random(150,240),(int)random(0,255),(int)random(140,230),50);
}