PImage ourImage;
PImage butImageYes;
PImage butImageNo;

void setup() {
  size(1260,720);
  ourImage=loadImage("coli.JPG");
  ourImage.resize(0,1000);
  butImageYes=loadImage("knap.png");
  butImageYes.resize(0,200);
  butImageNo=loadImage("knap2.png");
  //butImageNo.resize(0,200);
 
}

void draw(){
  background(0);
  //tint(0, 153, 204);
  image(ourImage,0,-200);
  //noTint();
  image(butImageYes,20,20);
  image(butImageNo,220,20,206,200);
}
