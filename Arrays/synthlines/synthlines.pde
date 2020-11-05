///////////////////////////// Varialbles ///////////////////////////// 
float [] sineWave;

///////////////////////////// Setup ///////////////////////////// 
void setup(){
size(720,720);
background(255);
sineWave = new float[width];
for (int g = 0; g < sineWave.length; g++) {
    // Fill array with values from sin()
    
    float r = map(g, 0, width, 0, g+TWO_PI);
    sineWave[g] = abs(sin(r));
  }
}

///////////////////////////// Draw ///////////////////////////// 
void draw(){


  for (int g = 0; g < sineWave.length; g++) {
    // Set stroke values to numbers read from array
    stroke( sineWave[g] * 255,sineWave[g] * 0,sineWave[g] * 0);
    line(g, 0, g, height);
  }
  
}
