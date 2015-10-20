// Subclass Fibonacci
class Fibonacci extends Sequence {
  @Override
  int compute(int n) {
    if (n == 1)
      return 0;
    if (n == 2)
      return 1;
    if ( n > 2)
      return compute(n-2) + compute(n-1);
    return -1;
  }
  
  @Override
  void display(int terms) {
    int square_width = width / terms;
    for (int i = 0; i < terms; i++) {
      fill(hue, 100, map(compute(i+1), 0, compute(terms), 0, 100));
      rect(i*square_width, height/3, square_width, 50);
    }
  }
  
  @Override
  String computeT(int n) {
    return "0";
  }
}