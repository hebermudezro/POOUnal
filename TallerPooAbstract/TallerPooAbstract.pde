// Object declaration
Sequence sequence;
int n=20;
void setup() {
  size(720,640);
  
  sequence = new Padovan();
}

void draw() {
  background(0);
  //object use
 // sequence.barChart(n);
  sequence.lineChart(n); //<>//
  sequence.curveFitting(n);
}