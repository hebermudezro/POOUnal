/*
Esta funcion retora el n-simo termino de la serie de Padovan
*/
int pado(int n) {
  if(n==1||n==2||n==3){
    return 1; //salida de la recursion
  }  else if(n > 3){
    return pado(n-2) + pado(n-3); // avance de la recursion
  }  else{
    return -1; // si n es negativo o 0
  }     
}


int n=21;
int base=10;

void setup() {
  float [] xa = new float[n];
  float [] ya = new float[n];
  float [] xb = new float[n];
  float [] yb = new float[n];
  float [] xc = new float[n];
  float [] yc = new float[n];
 
  size(600,600);
  print("Primeros ",n,"terminos de la serie de Padovan:\n");
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
        /*print("\r\ni=",i,"\tpado(i+1)=",pado(i+1),"\tj=",j);
        print("\r\ndisa=",disa/pado(i+1),"\tdisb=",disb/pado(i+1),"\tdisc=",disc/pado(i+1));*/
        if((disa/pado(i+1)>0.999)&&(disa/pado(i+1)<1.001)){
          xb[i]=xa[j];
          yb[i]=ya[j];
          //print("true a");
          break;
        } else if((disb/pado(i+1)>0.999)&&(disb/pado(i+1)<1.001)){
          xb[i]=xb[j];
          yb[i]=yb[j];
          //print("true b");
          break;
        } else if ((disc/pado(i+1)>0.999)&&(disc/pado(i+1)<1.001)){
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
      radius=base*pado(i+1);
      xc[i]=xa[i]+(radius*cos(angle));
      yc[i]=ya[i]-(radius*sin(angle));
      /*print("\r\nangle=",(angle)*180/PI);
      print("\r\nradius=",radius/base);
      print("\r\nxc[",i,"]=",xa[i]-xc[i]);
      print("\r\nyc[",i,"]=",ya[i]-yc[i]);]*/
      
    }
    fill(map(pado(i+1),1,pado(n),0,255),map(pado(i+1),1,pado(n),255,0),255);
    triangle(xa[i],ya[i],xb[i],yb[i],xc[i],yc[i]);
    print(pado(i+1),", ");
  }
}