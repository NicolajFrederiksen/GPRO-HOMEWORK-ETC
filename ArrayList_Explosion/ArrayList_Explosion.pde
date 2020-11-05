ArrayList<Circle> circles = new ArrayList<Circle>();

void setup() {
  size(500, 500);
}

void mousePressed(){
  for(int i = 0; i < 100; i++){
    circles.add(new Circle(mouseX, mouseY));   
  }
}

void draw() {
  background(200);

  for (int i = circles.size()-1; i >= 0; i--) {
    circles.get(i).move();
    circles.get(i).display();
    
    if(circles.get(i).isOffScreen()){
      circles.remove(i);
    }
  }
}
