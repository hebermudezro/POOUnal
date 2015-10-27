// Object declaration
Sequence sequence;
Sequence sequence2;
boolean click;
int ayylmao= 14;//The value of display only works between 3 to 20, with a value <3 Padovan dont work,with a value >20 ThueMorse calculation needs a big amount of memory, and can freeze the Process
void setup() {
  size(800, 600);
  sequence = new ThueMorse();
}

void draw() {
  sequence.display(ayylmao);
  if (keyPressed) {
    if (key == 't' || key =='T')
      sequence = new ThueMorse();
    if (key == 'p' || key == 'P')
      sequence = new Padovan();
    if (key == 'b' || key == 'B')
      sequence.barChart(ayylmao);
    if (key == 'l' || key =='L')
      sequence.lineChart(ayylmao);
    if (key == 'c' || key == 'C')
      sequence.curveFitting(ayylmao);
  }
}