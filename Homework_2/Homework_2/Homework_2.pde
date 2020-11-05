//color
color sort = #000000;
color hvid = #FFFFFF;
color groen = #067E0B;
color pink = #FA268D;
color himmel = #30A3ED;
color gul = #FAE203;

//ting til knap
int bg = himmel;
int synlig = 1000;
int transparrent = 0;
int alpha = transparrent;
int state = 1;


// grass
int grassSb = 800;
int grassSh = 500;
int grassX = 0;
int grassY = 718;

//sky
int skyS = 50;
int sky1x = 40;
int skyHy = 80;
int sky2x = 55;
int skyLy = 60;
int sky3x = 75;
int sky4x = 90;
int sky5x = 105;

//taleboble
int talebobleSb = 90;
int talebobleSh = 60;
int talebobleCx = 322;
int talebobleCy = 150;
int taletrekantX1 = 248;
int taletrekantX2 = 219;
int taletrekantY1 = 303;
int taletrekantY2 = 176;
int taletrekantZ1 = 297;
int taletrekantZ2 = 154;

//arm
int armSb = 113;
int armSh = 22;
int armVx = 250;
int armHx = 140;
int armY = 290;

//ben
int benSb = 25;
int benSh = 95;
int benVx = 220;
int benHx = 170;
int benY = 416;

//krop
int kropSb = 101;
int kropSh =139;
int kropX = 195;
int kropY = 325;

//ører
int oreSb = 30;
int oreSh = 100;
int oreVx = 240;
int oreHx = 150;
int oreY = 150;

//hoved
int hovedS = 100;
int hovedX = 195;
int hovedY = 209;

//fod
int fodSb = 22;
int fodSh = 13;
int fodVx = 170;
int fodHx = 220;
int fodY = 461;

//øje
int ojex1 = 169;
int ojey1 = 190;
int ojex2 = 190;
int ojey2 = 200;
int oje2x1 = 200;
int oje2y1 = 200;
int oje2x2 = 219;
int oje2y2 = 190;

//nose
int nosex = 195;
int nose1y = 218;
int nose2y = 210;

//toes
int toey1 = 455;
int toey2 = 466;
int toe1 = 165;
int toe2 = 175;
int toe3 = 215;
int toe4 = 225;

//mund
int mundSb = 25;
int mundSh = 15;
int mundx = 195;
int mundy = 234;

//text
int textplaceringx = 288;
int textplaceringy = 160;
int textsize = 24;

//mave
int mavex = 195;
int mavey = 325;
int maveSb = 50;
int maveSh = 110;

//tand
int tandx = 196;
int tandy = 229;
int tandS = 5;

//lyn
int l1 = 70;
int l2 = 100;
int l3 = 90;
int l4 = 60;
int l5 = 150;
int l6 = 85;
int l7 = 170;
int l8 = 50;
int l9 = 210;

//knap
int knapx=40;
int knapy=400;
int knapw=70;
int knaph=30;




void setup () {
  size (400,500);
  
}

void draw() {
background(bg);


//lyn
noStroke();
beginShape();
 fill(gul,alpha);
 vertex(l1,l2);
 vertex(l3,l2);
 vertex(l4,l5);
 vertex(l6,l7);
 vertex(l8,l9);
 vertex(l1,l7);
 vertex(l8,l5);
 endShape();
 
//sky

fill(hvid);
ellipse(sky1x,skyHy,skyS,skyS);
ellipse(sky2x,skyLy,skyS,skyS);
ellipse(sky3x,skyHy,skyS,skyS);
ellipse(sky4x,skyLy,skyS,skyS);
ellipse(sky5x,skyHy,skyS,skyS);



//taleboble
fill(hvid,alpha);
ellipse(talebobleCx,talebobleCy,talebobleSb,talebobleSh);
triangle(taletrekantX1,taletrekantX2,taletrekantY1,taletrekantY2,taletrekantZ1,taletrekantZ2);

stroke(sort);

//græs
fill(groen);
rect(grassX,grassY,grassSb,grassSh);

//knap
fill(hvid);
rectMode(CORNER);
rect(knapx,knapy,knapw,knaph);


fill(pink);
ellipseMode(CENTER);

//venstre arm
ellipse(armVx,armY,armSb,armSh);

//Højre arm
ellipse(armHx,armY,armSb,armSh);

//venstre ben
ellipse(benVx,benY,benSb,benSh);

//højre ben
ellipse(benHx,benY,benSb,benSh);

//krop
ellipse(kropX,kropY,kropSb,kropSh);

//øre
ellipse(oreVx,oreY,oreSb,oreSh);
ellipse(oreHx,oreY,oreSb,oreSh);

//Hoved
ellipse(hovedX,hovedY,hovedS,hovedS);

//fødder
rectMode(CENTER);
rect(fodVx,fodY,fodSb,fodSh);
rect(fodHx,fodY,fodSb,fodSh);

//Øjne
line(ojex1,ojey1,ojex2,ojey2);
line(oje2x1,oje2y1,oje2x2,oje2y2);

//næse
line(nosex,nose1y,nosex,nose2y);

//tæer
line(toe1,toey1,toe1,toey2);
line(toe2,toey1,toe2,toey2);
line(toe3,toey1,toe3,toey2);
line(toe4,toey1,toe4,toey2);

//mund
fill(sort);
ellipseMode(CENTER);
ellipse(mundx,mundy,mundSb,mundSh);

//tekst i taleboble
fill(sort,alpha);
textSize(textsize);
text("Woop!", textplaceringx, textplaceringy);

//tekst knap
fill(sort);
textSize(textsize/2);
text("Click!", knapx*1.5,knapy*1.05);

//mave-farve
fill(hvid);
ellipse(mavex,mavey,maveSb,maveSh);

//Tand
rectMode(CENTER);
rect(tandx,tandy,tandS,tandS);



}

void mousePressed(){
 if(mouseX>knapx && mouseX<knapx+70 && mouseY>knapy && mouseY<knapy+30) {
    if(state == 0) {
  bg = himmel;
  alpha = transparrent;
}
  if (state == 1){
    bg = sort;
    alpha = synlig;
     }
  
   state ++;
   if(state ==2){
     state=0;}
  
  }
}
