float xPosition=width/2;
float yPosition=height/2;
int stage=1;
int counter=1;
int tool;



float xSpeed=+2.5;
float ySpeed=+3.5;

void setup(){
  size(500,500);
  background(219,212,180);
  println(
  " When you wake up, you find yourself lying in a foggy forrest, alone and hungry. There is a basket containing 4 kinds of fruits: apple, grape, cherry and banana. You can only eat one of them, and you would choose:");
  println(" a.apple b.grape c.cherry d.banana");}

void draw(){
  if(stage==2 && counter==1){
  println("Congratulations! You have chosen the right fruit to feed yourself. Now you're going to find a way out. Here are 4 tools which may help you. You can only choose one of them:");
  println("a.magic stick b.super shield c.crystal ball d.magic lamp");
  if(key=='d'){
  println("Congratulations! The elf in the lamp just brings you home!");}
  else if(key=='a'){
  tool=1;
  println("Walking and walking, you finally find out the correct direction. Now you need to collect 10 foods with your chosen tool. Every bounce counts as a valid collecting action. Click the mouse to start.");}
  else if(key=='b'){
  tool=2;
  println("Walking and walking, you finally find out the correct direction. Now you need to collect 10 foods with your chosen tool. Every bounce counts as a valid collecting action. Click the mouse to start.");}
  else if(key=='c'){
  tool=3;
  println("Walking and walking, you finally find out the correct direction. Now you need to collect 10 foods with your chosen tool. Every bounce counts as a valid collecting action. Click the mouse to start.");}
  if(mousePressed==true){
  stage=stage+1;
  counter=counter+1;}}
  if(stage==3 && counter==2){
  background(219,212,180);
  fill(204,149,192);
  noStroke();
  ellipse(xPosition,yPosition,15,15);
  if(tool==1){
  fill(122,161,210);
  noStroke();
  rectMode(CENTER);
  rect(mouseX,400,60,10); }
  if(tool==2){
  fill(122,161,210);
  noStroke();
  }
  if(tool==3){
  fill(122,161,210);
  noStroke();
  ellipse(mouseX,400,40,40);}

  if (xPosition<=mouseX+20 && xPosition>=mouseX-20 && yPosition == 390){
    xSpeed = xSpeed;
    ySpeed = ySpeed * -1;
    }
  if(xPosition>width || xPosition<0){
    xSpeed = xSpeed * -1;
    }
  if(yPosition<0){
    ySpeed = ySpeed * -1;
  }else if(yPosition>=width){
     xPosition=width/2;
     yPosition=height/2;
     xSpeed=+2.5;
     ySpeed=+3.5;
  }
 
  xPosition=xPosition+xSpeed;
  yPosition=yPosition+ySpeed;}
}


void keyPressed(){
  if(key=='a'){
  println("Oops, the apple is poisonous! Remember: always be cautious about APPLE as the Snow White tells us.");}
  else if(key=='b' || key=='c'||key=='d'){
  stage=stage+1;}
  
  
}