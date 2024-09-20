//Hey, I became interested in drawing with Processing, so I checked out some YouTube tutorials by Tim Rondenbregger on creative coding. I particularly used his video 'Exploring Wave-Figures in Processing' as a base for this code. However, in his tutorial, he used just one file, while I adapted his code by implementing the class structures we've learned during class.

class waveRect {
  float mag = 400;
  float s = 15;
  int i;

  waveRect(int i) {
    this.i = i;
  }

  void display() {
    float w = map(sin(radians(frameCount)), -1, 1, -85, 85);
    float wave1 = map(tan(radians(frameCount * 0.8 + i + w)), -1, 1, -130, 130); 
    float wave2 = map(tan(radians(frameCount + i)), -1, 1, -mag, mag);
    float c = map(sin(radians(frameCount * 5 + i)), -1, 1, 0, 255);
    fill(c);
    rect(wave1, wave2, s, s);
  }
}
