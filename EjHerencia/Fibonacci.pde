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
    pushStyle();
    noStroke();
    lights();
    background(0);
    int square_width = width / terms;
    for (int i = 0; i < terms; i++) {
      fill(100, 100, map(compute(i+1), 0, compute(terms), 0, 255));
      //sphere(map(compute(i+1),0,compute(terms),square_width,height/terms));
      //translate(square_width,height/terms);
      rect(i*square_width, height/2, square_width, height/3);
    }
    popStyle();
  }
  @Override
    String computeT(int n) {
    return "0";
  }
}