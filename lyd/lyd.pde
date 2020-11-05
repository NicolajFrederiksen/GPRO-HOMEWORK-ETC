  
import processing.sound.*;
SoundFile lyd;

void setup() {
  size(640, 360);
  background(255);
    
  // Load a soundfile from the /data folder of the sketch and play it back
  lyd = new SoundFile(this, "sample.mp3");
  lyd.play();
}      

void draw() {
}
