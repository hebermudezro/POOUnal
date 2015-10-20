// Superclass Sequence
abstract class Sequence { 
  abstract int compute(int n);
  abstract String computeT(int n);
  abstract void display (int n);

  color hue;

  Sequence() {
    setHue(120);
  }

  void setHue(color h) {
    hue = h;
  }

  color hue() {
    return hue;
  }

  // Method overloading
  void display() {
    display(5);
  }
}