class Circle {

  float x;
  float y;
  float xSpeed = random(-3, 3);
  float ySpeed = random(-3, 3);
  
  float yAcc = 0.5;
  
  Circle(float x, float y){
    this.x = x;
    this.y = y;
  }
 
  void move() {
    x += xSpeed;
    y += ySpeed + yAcc;
  }

  void display() {
    ellipse(x, y, 20, 20);
  }
  
  boolean isOffScreen(){
    return x < 0 || x > width || y < 0 || y > height;
  }
}
