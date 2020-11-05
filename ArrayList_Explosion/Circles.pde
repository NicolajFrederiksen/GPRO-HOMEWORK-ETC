class Circle {

  float x;
  float y;
  float xSpeed = random(-3, 3);
  float ySpeed = random(-3, 3);
  
  float yAcc = 0.06;
  float xAcc = 0.08;
  
  Circle(float x, float y){
    this.x = x;
    this.y = y;
  }
 
  void move() {
    xSpeed=xSpeed-xAcc;
    ySpeed=ySpeed+yAcc;
    x += xSpeed;
    y += ySpeed;
      
    }
    
  

  void display() {
    ellipse(x, y, 20, 20);
  }
  
  boolean isOffScreen(){
    return x < 50 || x > width || y < 0 || y > height;
  }
}
