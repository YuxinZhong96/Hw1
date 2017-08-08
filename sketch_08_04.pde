float xPosition;
float yPosition;
float radius;
int speed=4;

void setup(){
  size(600,600);
  background(0);
}

void draw(){
  background(255);
  moveCircle();
  drawCircle(100,yPosition,radius);
  drawCircle(width/2,yPosition,radius);
  drawCircle(500,yPosition,radius);
  radius=sizeRadius(mouseX,mouseY);
}

void drawCircle(float xPos, float yPos, float radius){
  fill(255,0,0);
  noStroke();
  ellipse(xPos,yPos,radius,radius);}
  
void moveCircle(){
  yPosition=yPosition+speed;
  if(yPosition >height || yPosition < 0){
    speed=speed * -1;  
  }}
  
float sizeRadius(float x1, float y1){
  float answer=x1-y1;
  return answer;
   }