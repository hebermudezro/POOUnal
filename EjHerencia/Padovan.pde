// Subclass Padovan
class Padovan extends Sequence {
  
  @Override
  int compute(int n) {
    if (n >= 1 && n <= 3)
      return 1;
    else if ( n > 3)
      return compute(n-2) + compute(n-3);
    return -1;
  }
  
  @Override
  void display(int n) {
    float [] xa = new float[n];
    float [] ya = new float[n];
    float [] xb = new float[n];
    float [] yb = new float[n];
    float [] xc = new float[n];
    float [] yc = new float[n];
    
    int base = 5;
    for(int i=0;i<n; i++){
    xa[0]=width/2;
    ya[0]=height/2;
    xb[0]=xa[0]+float(base)/2;
    yb[0]=ya[0]-sqrt(3)*float(base)/2;
    xc[0]=xa[0]+float(base);
    yc[0]=ya[0];
    xa[1]=xc[0];
    ya[1]=yc[0];
    xb[1]=xa[1]-float(base)/2;
    yb[1]=ya[1]+sqrt(3)*float(base)/2;
    xc[1]=xa[1]-float(base);
    yc[1]=ya[1];
    xa[2]=xc[1];
    ya[2]=yc[1];
    xb[2]=xa[2]+float(base)/2;
    yb[2]=ya[2]+sqrt(3)*float(base)/2;
    xc[2]=xb[2]-float(base);
    yc[2]=yb[2];
    if(i>2){
      xa[i]=xc[i-1];
      ya[i]=yc[i-1];
      for(int j=0;j<i;j++){
        float disa,disb,disc;
        disa=dist(xa[i],ya[i],xa[j],ya[j])/base;
        disb=dist(xa[i],ya[i],xb[j],yb[j])/base;
        disc=dist(xa[i],ya[i],xc[j],yc[j])/base;
        if((disa/compute(i+1)>0.999)&&(disa/compute(i+1)<1.001)){
          xb[i]=xa[j];
          yb[i]=ya[j];
          //print("true a");
          break;
        } else if((disb/compute(i+1)>0.999)&&(disb/compute(i+1)<1.001)){
          xb[i]=xb[j];
          yb[i]=yb[j];
          //print("true b");
          break;
        } else if ((disc/compute(i+1)>0.999)&&(disc/compute(i+1)<1.001)){
          xb[i]=xc[j];
          yb[i]=yc[j];
          //print("true c");
          break;
        } else{
          continue;
        }
      }
      float angle;
      int radius;
      angle=PI/3-atan2(yb[i]-ya[i],xb[i]-xa[i]);
      radius=base*compute(i+1);
      xc[i]=xa[i]+(radius*cos(angle));
      yc[i]=ya[i]-(radius*sin(angle));      
    }
     fill(hue, 100, map(compute(i+1), 0, compute(n), 100, 0));
    triangle(xa[i],ya[i],xb[i],yb[i],xc[i],yc[i]);
    }
  }
  
  @Override
  String computeT(int n) {
    return "0";
  }
}