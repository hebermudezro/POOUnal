//Subclass ThueMorse
class ThueMorse extends Sequence {
  @Override
  int compute(int n) {//This method calculate the amount of '1' chars in the ThueMorse sequence
    String binarios =computeT(n);
    float temp=pow(2,n+1);
    int unos=0;
    for(int i=0;i<temp;i++){
      if(binarios.charAt(i)=='1')
      unos++;
    }
    return unos;
  }
  @Override
  String computeT(int n) {//ThueMorse computing method
    String Thue="0";
    String morse="1";
    for(int i=0;i<=n;i++) {
      String t;
      String m;
      t=Thue;                    
      m=morse;
      Thue+=m;
      morse+=t;
    }
    return (Thue);
  }
  void puntos(int i,String resultado){//This method change the fill color depending the character in the string
    if(resultado.charAt(i)=='0'){
      fill(255,255,0);
    }
    else{  
      fill(0,255,255);
    }
  }
  @Override
  void display(int terms) {
    pushStyle();//pushStyle() and popStyle() allows visual temporary modifications in the display function without affecting the rest of subclasses
    noStroke();
    background(0);
    String resultado;
    float tam=pow(2,terms+1);
    float paurea=(1+sqrt(5))/2;
    float aaureo=(paurea*PI)/180;
    float radiomax=height/2;
    float x=width/2;
    float y=height/2;
    float tcirculo=3/2;
    resultado = computeT(terms);
    for(int i=0;i<tam;i++){
      float dist = i/tam;
      float posicion=dist*radiomax;
      float angulo=i*aaureo;
      float coorx =x + cos(angulo)*posicion;
      float coory =y + sin(angulo)*posicion;
      puntos(i,resultado);
      ellipse(coorx,coory,tcirculo,tcirculo);
    }
    popStyle();
  }
}