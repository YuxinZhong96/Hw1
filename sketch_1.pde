float xPosition;
float yPosition;
int stage=1;
int counter=1;
int tool;
int n,m;
PImage forrest,forrest1,stick,ball,shield,food;
import processing.sound.*;
SoundFile file; 


float xSpeed=+2.5;
float ySpeed=+3.5;

void setup(){
  file=new SoundFile(this,"1.mp3");
  file.play();
  file.loop();
  size(500,500);
  forrest=loadImage("forrest.jpg");
  forrest1=loadImage("forrest1.jpg");
  stick=loadImage("stick.png");
  ball=loadImage("ball.png");
  shield=loadImage("shield.png");
  food=loadImage("food.png");
  image(forrest1,0,0,500,500);
  xPosition=width/2;
  yPosition=height/2;
  textSize(15);
  fill(255);
  if(stage==1){
  text(" When you wake up, you find yourself lying in a foggy forrest, alone and hungry. There is a basket containing 4 kinds of fruits: apple, grape, cherry and banana. You can only eat one of them, and you would choose:",100,100,300,300);
  text("a.apple b.grape c.cherry d.banana",100,280,150,500);}}

void draw(){
  
  if(stage==2 && counter==1){
  image(forrest1,0,0,500,500);
  text("Congratulations! You have chosen the right fruit to feed yourself. Now you're going to find a way out. Here are 4 tools which may help you. You can only choose one of them:",100,100,300,300);
  text("e.magic stick f.super shield g.crystal ball h.magic lamp",100,250,150,500);
  counter=counter+1;}
  if(keyPressed== true && key=='h' && counter==2){
  image(forrest1,0,0,500,500);
  text("Congratulations! The elf in the lamp just brings you home!",180,200,150,180);
  stage=stage+1;
  counter=counter+1;}
  else if(keyPressed== true && key=='e' && counter==2){
  tool=1;
  stage=3;
  counter=counter+1;
  image(forrest1,0,0,500,500);
  text("Walking and walking, you finally find out the correct direction. Now you need to collect 5 foods with your chosen tool. Every bounce counts as a valid collecting action. Click the mouse to start.",100,100,300,300);}
  else if(keyPressed== true && key=='f' && counter==2){
  tool=2;
  stage=3;
  counter=counter+1;
  image(forrest1,0,0,500,500);
  text("Walking and walking, you finally find out the correct direction. Now you need to collect 5 foods with your chosen tool. Every bounce counts as a valid collecting action. Click the mouse to start.",100,100,300,300);}
  else if(keyPressed== true && key=='g' && counter==2){
  tool=3;
  counter=counter+1;
  stage=3;
  image(forrest1,0,0,500,500);
  text("Walking and walking, you finally find out the correct direction. Now you need to collect 5 foods with your chosen tool. Every bounce counts as a valid collecting action. Click the mouse to start.",100,100,300,300);}
  if(mousePressed==true){
  stage=4;
  }
  if(stage==4){
  image(forrest1,0,0,500,500);
  fill(204,149,192);
  image(food,xPosition,yPosition,20,20);
  if(tool==1){
  image(stick,mouseX-30,400,60,60);}
  if(tool==2){
  image(shield,mouseX,400,40,40);}
  if(tool==3){
  image(ball,mouseX,400,40,40);}
  if (xPosition<=mouseX+20 && xPosition>=mouseX-20 && yPosition == 390){
    xSpeed = xSpeed;
    ySpeed = ySpeed * -1;
    n=n+1;
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
     n=0;
  }
 
  xPosition=xPosition+xSpeed;
  yPosition=yPosition+ySpeed;
  textSize(15);
  fill(255);
  text("Bounce counts: " + n, 180, 80);}
  if(n==5){
    stage=stage+1;
    textSize(15);
    fill(255);
    text("Congratulations! Now you can escape from the forrest!",180,200,150,180);
}
}

void keyPressed(){
  if(key=='a'){
  image(forrest1,0,0,500,500);
  text("Oops, the apple is poisonous! You are dead.",180,200,150,180);}
  else if(key=='b' || key=='c'||key=='d'){
  stage=stage+1;} 
}