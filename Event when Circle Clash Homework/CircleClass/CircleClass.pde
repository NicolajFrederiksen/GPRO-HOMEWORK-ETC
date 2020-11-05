Circle circle;
Circle circle1;
Circle circle2;

float circleD = random(25,75);
float xSpeed = random(-3,3);
float ySpeed = random(-3,3);
float xSpeed2 = random(-3,3);
float ySpeed2 = random(-3,3);
float xSpeed3 = random(-3,3);
float ySpeed3 = random(-3,3);
float xStartPos = random(width);
float yStartPos = random(height);
float xStartPos2 = random(width);
float yStartPos2 = random(height);
float xStartPos3 = random(width);
float yStartPos3 = random(height);
color grey = #838383;
float R = random(255);
float G = random (255);
float B = random (255);

int num= 50;
Circle[] tail;
float scale = 0.995;

void setup() {
  size(700, 700);
  
  
  circle = new Circle(xStartPos, yStartPos, xSpeed, ySpeed, circleD,R,G,B,1);
  circle1 = new Circle(xStartPos2, yStartPos2, xSpeed2, ySpeed2, circleD,R,G,B,2,1);
  circle2 = new Circle(mouseX, mouseY, circleD,R,G,B,3,1,1);
  
  tail = new Circle[50];

    for (int i = 0; i < num; i++) {
      tail[i] = new Circle(mouseX, mouseY, circleD,R,G,B,3,1,1);
    }
}

void draw() {
  background(grey);
  for (int i = num-1; i > 0; i--) {
    tail[i].x3=tail[i-1].x3;
    tail[i].y3=tail[i-1].y3;
    tail[i].circleD=tail[i-1].circleD*pow(scale,i);
  }
 
   tail[0].x3 = mouseX;
   tail[0].y3 = mouseY;
   
  for (int i = 0; i < num; i++) {
    tail[i].display();
  }
  circle.move();
  circle.display();
  circle.overlap();
  circle.overlap1();

  circle1.move();
  circle1.display();
  circle1.overlap();
  circle1.overlap2();
       
  //circle2.move();
  circle2.display();
  circle2.overlap1();
  circle2.overlap2();
  circle2.x3=mouseX;
  circle2.y3=mouseY;
  
  
 }
