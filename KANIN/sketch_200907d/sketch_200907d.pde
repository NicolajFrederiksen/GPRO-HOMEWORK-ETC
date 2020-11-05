int less200 = 200;
int less400 = less200 * 2;
int less600 = less200 * 3;
color sort = #000000;
color grey = #898989;
color hvid = #FFFFFF;

void setup () {
  size (600,200);
  
}

void draw() {
  
if(mouseX<less200){
  background(hvid);
}else{
if (mouseX<less400){
  background(grey);
  }else{
if (mouseX<less600){
  background(sort);
  }
}
}
}
