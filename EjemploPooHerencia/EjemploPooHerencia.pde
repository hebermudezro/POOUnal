// Superclass Sequence
abstract class Sequence { 
  abstract int compute(int n);
  color hue;
  int yPos;
  Sequence() {
    setHue(120);
    setHeight(height/2);}
  void setHeight(int h) {
    yPos = h;}
  int height() {
    return yPos;}
  void setHue(color h) {
    hue = h;}
  color hue() {
    return hue;}
  // this function is common among different
  // Sequence subtypes, so we moved it here
  void display(int terms) {
    int square_width = width / terms;
    for (int i = 0; i < terms; i++) {
      fill(hue, 100, map(compute(i+1), 0, compute(terms), 0, 100));
      rect(i*square_width, height(), square_width, 50);}}
  // Method overloading
  void display() {
    display(5);}}
// Subclass Fibonacci
class Fibonacci extends Sequence {
  Fibonacci() {
    setHue(0);}
  @Override
  int compute(int n) {
    if (n == 1)
      return 0;
    if (n == 2)
      return 1;
    if ( n > 2)
      return compute(n-2) + compute(n-1);
    return -1;}}
// Subclass Padovan
class Padovan extends Sequence {
  Padovan() {
    setHue(180);}
  @Override
  int compute(int n) {
    if (n == 1 || n == 2 || n == 3)
      return 1;
    if ( n > 3)
      return compute(n-2) + compute(n-3);
    return -1;}}
// Object declaration
Sequence sequence;
boolean padovan; // false by default, so we begin with Fibonacci
void setup() {
  size(720,640);
  colorMode(HSB, 360, 100, 100);
  // We cannot initialize an 'abstract object'
  // only 'concrete' ones:
  sequence = new Fibonacci();}

void draw() {
  background(0);
  // Object use:
  sequence.setHeight(mouseY);
  sequence.display();}
void keyPressed() {
  padovan = !padovan;
  // both Fibonacci and Padovan object instances
  // may be assigned to the superclass sequence object:
  sequence = padovan ? new Padovan() : new Fibonacci();}