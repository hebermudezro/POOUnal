// Superclass Sequence
abstract class Sequence { 
  abstract int compute(int n);
  abstract String computeT(int n);
  abstract void display (int n);
  void barChart(int n) {
    int bar_width=width/n;
    background(0);
    for(int i=0;i<n;i++){
      fill(0,map(compute(i+1),0,compute(n),255,0),map(compute(i+1),0,compute(n),0,255));
      rect(i*bar_width,height-map(compute(i+1),0,compute(n),0,height),bar_width,map(compute(i+1),0,compute(n),0,height));
  }}
  void lineChart(int n) { //<>//
  background(0);
    pushStyle();
    int rect_posx=width/n;
    int tempx=0,tempy=0;
    rectMode(CENTER);
    fill(0,100,255);
    for(int i=0;i<n;i++){
      noStroke();
      rect((i+1)*rect_posx,map(compute(i+1),0,compute(n),height,0),height*0.01,width*0.01);
      if (tempx!=0||tempy!=0){
        stroke(100,255,255);
        line((i+1)*rect_posx,map(compute(i+1),0,compute(n),height,0),tempx,tempy);
      }
      tempx=(i+1)*rect_posx;
      tempy=int(map(compute(i+1),0,compute(n),height,0));
    }
  popStyle();
  }
  void curveFitting(int n){
    int posx=width/n;
    pushStyle();
    noFill();
    background(0);
    stroke(255,255,0);
    beginShape();
    curveVertex(0,height);
    curveVertex(0,height);
    for(int i=0;i<=n;i++){
      curveVertex((i)*posx,map(compute(i),0,compute(n),height,0));
    }
    curveVertex(width,0);
    curveVertex(width,0);
    endShape();
    popStyle();
    }
  }