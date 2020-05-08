void effect01() {
    Square[] rect;
    class Square {
    Square(int index) {
    }
   float x1 = 0; // mapping for noise
   float x2 = 0;
    fill(random(255), random(255), random(255)); // fill of rect

    for (int i = 0; i < width; i++) { 

      rect(i*90, noise(x1, x2)*1000, 30, 30); // position and size of rect 
      x1 -= map(mouseX, 0, width, 0.0001, 1 ); //mapping the x1 for noise

      frameRate(10);
    }
    for (int j = 0; j < width; j++) {
      x2 -= map(j, 0, width, 0.00001, 1); // mapping x2 for noise
    }
}
