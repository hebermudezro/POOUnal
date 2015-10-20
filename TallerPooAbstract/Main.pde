// Super abstract class Sequence
import java.util.Arrays;

abstract class Sequence {
  Sequence(){
  }
  //abstract String author();
  //abstract String description();
  abstract int compute(int n);
  int [] toArray(int n) {
    int[] seq = new int[n];
    for (int i=0; i<n; i++)
      seq[i] = compute(i+1);
    return seq;
  }
  /**
   * Returns the first n seq terms as a string.
   * Sequence may then simply be printed as: println(sequence.toString(n))
   */
  String toString(int n) {
    return Arrays.toString(toArray(n));
  }
  // All display functions must scale the canvas properly
  /**
   * Display n seq terms as you wish
   */
  abstract void display();
  void barChart(int n) {
    int bar_width=width/n;
    for(int i=0;i<n;i++){
      fill(0,map(compute(i+1),0,compute(n),0,127),map(compute(i+1),0,compute(n),0,255));
      rect(i*bar_width,height,bar_width,map(compute(i+1),0,compute(n),0,height));
  }}
  
  /**
   * Display n seq terms as a line chart: https://en.wikipedia.org/wiki/Line_chart
   * Warning: Should be implemented here in the super class!
   */
  void lineChart(int n) {//Corregir //<>// //<>//
    int newWidth= width-(int (width*0.03));
    int rect_posx=height/n; //<>//
    int tempx=0,tempy=0;
    rectMode(CENTER);
    fill(0,255,0);
    for(int i=0;i<n;i++){
      noStroke();
      rect((i+1)*rect_posx,newWidth-map(compute(i+1),0,compute(n),1,newWidth-1),height*0.01,width*0.01);
      println(i+1*rect_posx);
      if (tempx!=0||tempy!=0){
        stroke(0,0,255);
        line((i+1)*rect_posx,newWidth-map(compute(i+1),0,compute(n),1,newWidth-1),tempx,tempy);
      }
      tempx=(i+1)*rect_posx;
      tempy=int(newWidth-map(compute(i+1),0,compute(n),1,newWidth-1));
    }
  
  }
  
  /**
   * Display n seq terms as a curve firring: https://en.wikipedia.org/wiki/Curve_fitting
   * Hint: refer to the section 'Curves' here: https://processing.org/reference/
   * Warning: Should be implemented here in the super class!
   */
  void curveFitting(int n) {
    //TODO misssing implementation
  }
}
class Padovan extends Sequence{
    //author();
  //description();
 void display(){}
  @Override
  int compute(int n) {
    if (n == 1 || n == 2 || n == 3)
      return 1;
    if ( n > 3)
      return compute(n-2) + compute(n-3);
    return -1;}
  
  
}
  