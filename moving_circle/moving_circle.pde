float circleX = 50;
float circleY = 50;
float circleD = 20.;

float xSpeed = 2;
float ySpeed = 4;

void setup(){
size(500,500);
}


void draw() {
  background(200);

    circleX += xSpeed;
    if (circleX <= circleD/2 || circleX >= width-circleD/2) {
      xSpeed *= -1;
    }

    circleY += ySpeed;
    if (circleY <= circleD/2 || circleY >= height-circleD/2) {
      ySpeed *= -1;  //yspeed*(-1)
    }

    ellipse(circleX, circleY, circleD, circleD);
}
