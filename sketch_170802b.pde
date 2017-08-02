float xPosition;
float yPosition;
int x,y;
int n;


float xSpeed=+2.5;
float ySpeed=+3.5;

void setup(){
  size(500,500);
  background(219,212,180);
  x=60;
  y=15;
  n=0;
  xPosition=width/2;
  yPosition=height/2;
}

void draw(){
  background(219,212,180);
  fill(204,149,192);
  noStroke();
  ellipse(xPosition,yPosition,y,y);
  fill(122,161,210);
  noStroke();
  rectMode(CENTER);
  rect(mouseX,400,x,10); 

  if (xPosition<=mouseX+20 && xPosition>=mouseX-20 && yPosition == 390){
    xSpeed = xSpeed;
    ySpeed = ySpeed * -1;
    n=n+1;
    if(n<=5){
    x=x-5;
    y=y+5;}
    }
  if(xPosition>width || xPosition<0){
    xSpeed = xSpeed * -1;
    }
  if(yPosition<y){
    ySpeed = ySpeed * -1;
  }else if(yPosition>=width){
     xPosition=width/2;
     yPosition=height/2;
     xSpeed=+2.5;
     ySpeed=+3.5;
     x=60;
     y=15;
     n=0;
  }
 
  xPosition=xPosition+xSpeed;
  yPosition=yPosition+ySpeed;
}