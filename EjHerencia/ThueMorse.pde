//Subclass ThueMorse
class ThueMorse extends Sequence {
    String resultado;
    char[] compare;
  @Override
  int compute(int n) {
    return -1;
  }
  @Override
  String computeT(int n) {
    String Thue="0";
    String morse="1";
    for(int i=0;i<=n;i++) {
      String t;
      String m;
      t=Thue;                    
      m=morse;
      morse+=t;
    }
    return (Thue);
  }
  
  void setResultado( int n){
    resultado = computeT(n);
  }
  String getResultado(){
    return resultado; 
  }
  void puntos(int i,float coorx,float coory, int n){
    setResultado(n);
    getResultado();
    char[] compare=resultado.toCharArray();
    if(compare[i]=='0'){
    /*if(resultado.charAt(i)=='0'){*/
      fill(0,255,0);
    }
    else{  
      fill(0,0,255);
    }
    /*ellipse(coorx,coory,tcirculo,tcirculo);*/
  }
  
  @Override
  void display(int terms) {
     float tam=pow(2,terms+1);
     float paurea=(1+sqrt(5))/2;
     float aaureo=(paurea*PI)/180;
     float radiomax=height/2;
     float x=width/2;
     float y=height/2;
     float tcirculo=2;
     for(int i=0;i<tam;i++){
      float dist = i/tam;
      float posicion=dist*radiomax;
      float angulo=i*aaureo;
      float coorx =x + cos(angulo)*posicion;
      float coory =y + sin(angulo)*posicion;
      puntos(i,coorx,coory, terms);
      ellipse(coorx,coory,tcirculo,tcirculo);
    }
  }
}