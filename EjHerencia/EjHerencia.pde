// Object declaration
Sequence sequence;
boolean click;

void setup() {
  size(720,640);
  colorMode(HSB, 360, 100, 100);
  // We cannot initialize an 'abstract object'
  // only 'concrete' ones:
  sequence = new ThueMorse();
}

void draw() {
  // Object use:
  sequence.display(15);
}

void keyPressed() {
  click = !click;
  // both Fibonacci and Padovan object instances
  // may be assigned to the superclass sequence object:
  sequence = click ? new Padovan() : new ThueMorse();
}