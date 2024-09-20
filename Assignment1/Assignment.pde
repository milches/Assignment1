void setup() {
  size(1200, 900);
  background(0);
}

void draw() {
  translate(width/2, height/2);
  noStroke();
  for (int i = 0; i < 100; i++) { 
    waveRect waveRect = new waveRect(i);
    waveRect.display();
  }
}
