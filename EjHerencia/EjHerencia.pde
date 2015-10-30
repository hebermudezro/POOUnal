// Object declaration
Sequence sequence;
Sequence sequence2;
boolean click;
String menu1 = "For visual representations. Press T for Thue Morse, P for Padovan, F for fibonacci";
String menu2 = "For a standard representations. Press B for bar graphic representation, L for a lineal representation, C fot a curve fitting style representation";
int ayylmao= 14;//The value of display only works between 3 to 20, with a value <3 Padovan dont work,with a value >20 ThueMorse calculation needs a big amount of memory, and can freeze the Process
void setup() {
  size(800, 600,P3D);
  sequence = new ThueMorse();
}
void draw() {
  textSize(10);
  sequence.display(ayylmao);
  fill(255,0,0);
  text(menu1, 10,10);
  text(menu2, 10,20);
  if (keyPressed) {
    if (key == 't' || key =='T')
      sequence = new ThueMorse();
    if (key == 'p' || key == 'P')
      sequence = new Padovan();
    if (key == 'f' || key == 'F')
      sequence = new Fibonacci();
    if (key == 'b' || key == 'B')
      sequence.barChart(ayylmao);
    if (key == 'l' || key =='L')
      sequence.lineChart(ayylmao);
    if (key == 'c' || key == 'C')
      sequence.curveFitting(ayylmao);
  }
}