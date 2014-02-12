class Box {
  // XPos, yPos, width, height, fill, stroke, midi sequence
  int x, y, w, h, f, s;
  MidiSequence ms;
  Box(int aX, int aY, int aW, int aH, int aF, int aS) {
    x = aX;
    y = aY;
    w = aW;
    h = aH;
    f = aF;
    s = aS;
  }
  void display() {
    stroke(s);
    fill(f);
    rect(x, y, w, h);
  } 
  void play() {
    if (ms != null)
      ms.playSequence(); 
    else 
      println("ms null");
  }
}
