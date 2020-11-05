
//void setup () {
//  int b=5;
//  int c=myFunction(b);
//  println("in Main");
//  println(b);
//  println(c);
//}

//int myFunction(int a){  
//  println("inside myFunction: a=",a);
//  a=a+1;
//  println(a);
//  return a;
  
//}

//void setup(){
//int[] a = {1,2,3,4,5};
//int[] ff={0,0,0,0,0};
//println(a[2]);
//ff=myArrayFunction(a);
//println(a[2]);
//println(ff[2]);
//}

//int [] myArrayFunction(int[] d){
//  d[2]=d[2]+1;
//  return d;
//}

void setup(){
int[] a = {1,2,3,4,5};
println(a[2]);
println(a[3]);
myArrayFunction(a);
println(a[2]);
println(a[3]);
}

void myArrayFunction(int[] d){
  d[2]=d[2]+1;
}
