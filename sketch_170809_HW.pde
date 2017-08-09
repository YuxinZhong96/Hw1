float radius1=50;
float radius2=400;
float theta=0;
PVector position1,position2,position3,position4;

void setup(){
  size(500,500);
  background(0);
  position1=new PVector(0,0);
  position2=new PVector(0,0);
  position3=new PVector(0,0);
  position4=new PVector(0,0);

}

void draw(){
  position1.x=radius1 * cos(theta);
  position1.y=radius1 * sin(theta);
  position2.x=radius2 * cos(TAU-theta);
  position2.y=radius2 * sin(TAU-theta);
  position3.x=radius2 * sin(PI-theta);
  position3.y=radius2 * cos(PI-theta);
  position4.x=radius2 * sin(HALF_PI-theta);
  position4.y=radius2 * cos(HALF_PI-theta);
  randomColor();
  line(position1.x+width/2,position1.y+height/2,position2.x+width/2,position2.y+height/2);
  line(position1.x+width/2,position1.y+height/2,position3.x+width/2,position3.y+height/2);
  line(position2.x+width/2,position2.y+height/2,position4.x+width/2,position4.y+height/2);
  theta += 50;
}

void randomColor(){
   stroke(random(150,225),random(0,140),random(110,210));
}