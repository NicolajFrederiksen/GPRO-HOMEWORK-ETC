color darkpurple = #53035F;
color red=#FF0000;
int stepXY=72;
int linestart=0;
int colormin=100;
int colormax=200;
int strokesize=5;

int prevRectX;
int prevRectY;

boolean condition1;
boolean condition2;
boolean condition3;
boolean condition4;

void setup(){    //draws once
size(720,720);     //screen size
stroke(darkpurple);    //stroke color
strokeWeight(strokesize);    //stroke thickness
//Loop for rectangles and lines
for(int i = linestart; i <=width; i+=stepXY){
  for(int o = linestart; o<=height; o+=stepXY){
    fill(random(colormin,colormax)); //fills with random grey
    rect(i,o,stepXY,stepXY);} // draws rect at x and y coordinates with loop used for xy coordinates
  line(linestart,i,width,i);  //uses loop for y coordinates
  line(i,linestart,i,height); //uses loop for x coordinates
  }}
  
void draw(){}


void mousePressed(){
  for(int i=linestart; i<=width; i+=stepXY){
    for(int o=linestart; o<=height; o+=stepXY){
      condition1 = mouseX>i;
      condition2 = mouseY>o;
      condition3 = mouseX<i+stepXY;
      condition4 = mouseY<o+stepXY;
      if(condition1&&condition3&&condition2&&condition4){
        fill(random(colormin,colormax));
        rect(prevRectX,prevRectY,stepXY,stepXY);
        fill(red);
        rect(i,o,stepXY,stepXY);
        prevRectX=i;
        prevRectY=o;
      }}}} //<>//
