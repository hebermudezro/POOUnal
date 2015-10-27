// Object declaration
Sequence sequence;
boolean click;
int ayylmao= 15;
void setup() {
  size(800,600);
  sequence = new Padovan();
}

void draw() {
  // Object use:
  //sequence.display(ayylmao);//The value of display only works between 3 to 20, with a value <3 Padovan dont work,with a value >20 ThueMorse calculation needs a big amount of memory, and can freeze the Process
  sequence.barChart(ayylmao);
}

void mousePressed() {
  click = !click;
  sequence = click ? new Padovan() : new ThueMorse();
}