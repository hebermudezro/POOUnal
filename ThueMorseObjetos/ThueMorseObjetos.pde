int W=720;
int H=720;
int N=15;
float tam=pow(2,N+1);
//String Thue;
float paurea=(1+sqrt(5))/2;
float aaureo=(paurea*PI)/180;
float radiomax=H/2; //<>//
float tcirculo=2;

void setup(){
  size(720,720);
  noStroke();
  background(150,150,150);
  sucesion.binarios(N);
  sucesion.setResultado();
  sucesion.getResultado();
  sucesion.dibujo();
}
ThueMorse sucesion = new ThueMorse();
class ThueMorse{
  int coorx;
  int coory;
  String resultado;
  //int N=15;
  void setResultado(){
    resultado = binarios(N);
  }
  String getResultado(){
    return resultado; //<>//
  }
  String binarios(int N){//Retorna en un String, la sucesion de Thue-Morse
    String Thue="0";
    String morse="1";
    for(int i=0;i<=N;i++) {
      String t;
      String m;
      t=Thue;                    
      m=morse;
      Thue+=m;
      morse+=t;
    }
    return (Thue);
  }
  void dibujo(){
  float x=W/2; //<>//
  float y=H/2; //<>//
  for(int i=0;i<tam;i++){
    float dist = i/tam;
    float posicion=dist*radiomax;
    float angulo=i*aaureo;
    float coorx =x + cos(angulo)*posicion;
    float coory =y + sin(angulo)*posicion;
    sucesion.puntos(i,coorx,coory);
  }
  }
  void puntos(int i,float coorx,float coory){
      if(resultado.charAt(i)=='0'){
      fill(0,255,0);
    }
    else{  
      fill(0,0,255);
    }
    ellipse(coorx,coory,tcirculo,tcirculo);}
}