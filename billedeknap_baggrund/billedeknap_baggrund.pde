import processing.sound.*;
SoundFile mysoundfile;

int lightG = #CBF2DA;

int lightR = #FF2C2C;
int darkR = #CB2727;
int strokeRect = 255;
int strokeWRect = 2;
int strokeColor = 0;

float scalebut=1.2;

boolean overBox = false;
boolean locked = false;
int r = 255;

int strokeWR = 3;
int circleMaxSize = 100;

// define button position and dimensions
int xButton_ul=100;
int yButton_ul=200;
float wButton = 320/2;
float hButton = 320/2;

String c = "CLICK";
int textSize = 20;

boolean condition1;
boolean condition2;
boolean condition3;
boolean condition4;

PImage ourImage;
PImage pepeImage;

boolean a=false;
boolean b=false;


void setup() {
  size(1260,720);
  ourImage=loadImage("coli.JPG");
  pepeImage=loadImage("pepe.jpg");
  image(ourImage,0,0,width,height); //import image as background
  //background(lightG);
  mysoundfile = new SoundFile(this, "sample.mp3");
  mysoundfile.play();
}

void draw(){

  // the button
 // rectMode(CENTER);
  stroke(strokeRect);
  strokeWeight(strokeWRect);
  image(pepeImage,xButton_ul,yButton_ul,wButton,hButton); //make a image in to a button, using same parameters as if it where the button
  //rect(xButton_ul,yButton_ul,wButton,hButton);
  
  fill(strokeColor);
  textSize(textSize+2);
  textAlign(CENTER, CENTER);
  text(c,xButton_ul+(wButton/2),yButton_ul+(hButton/2.));
  // NOTE the difference between integer 2 and float 2. in the line above.
  // Why can we use either of them here?
  
 
  // the previous line is technically correct, but the code below 
  // is much easier to read, understand and debug - so it is considered a
  // good programming practice (comment by Olga)
  
   condition1 = mouseX > xButton_ul;
   condition2= mouseX < (xButton_ul + wButton);
   condition3=(mouseY < yButton_ul + hButton);
   condition4 = (mouseY > yButton_ul);
   
  if(a){
  wButton++;
  hButton++;
  }
  else if (a=false) {
  image(pepeImage,xButton_ul,yButton_ul,wButton,hButton); } 
  
   
  if (condition1 && condition2 && condition3 && condition4) {
  tint(lightR);
  cursor(HAND);

    
  overBox = true; 
  }
  else {noTint();
  cursor(ARROW);
  overBox = false;
  }

}

  //click mouse function
void mouseClicked() {
  if (overBox) { locked = true;
    
   // a=!a;
    fill(random(r),random(r),random(r));
    stroke(random(r),random(r),random(r));
    strokeWeight(strokeWR);
    circle(random(width),random(height),random(circleMaxSize));
    //wButton=wButton*scalebut;
    //hButton=hButton*scalebut;
    
    
    
  } else {
   locked = false;
  
   
  }
}
