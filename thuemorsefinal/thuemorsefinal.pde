String ThueMorse(int N,String Thue){//Retorna en un String, la sucesion de Thue-Morse
  Thue="0"; //<>//
  String morse="1";
  for(int i=0;i<=N;i++) {
    String t;
    String m;
    t=Thue;                    
    m=morse;
    Thue+=m; //<>//
    morse+=t; //<>//
  }
  return (Thue);
}
void setup(){
  int N=15;
  float tam=pow(2,N+1);
  String Thue;
  float paurea=(1+sqrt(5))/2;
  float aaureo=(paurea*PI)/180;
  float radiomax=width/2;
  float tcirculo=2;
  Thue= new String();
  size(720,720);
  noStroke();
  background(150,150,150);
  Thue=ThueMorse(N,Thue); //<>//
  float x=width/2;
  float y=height/2;
  for(int i=0;i<tam;i++){
    float dist = i/tam;
    float posicion=dist*radiomax;
    float angulo=i*aaureo;
    float coorx =x + cos(angulo)*posicion;
    float coory =y + sin(angulo)*posicion;
    if(Thue.charAt(i)=='0'){
      fill(0,255,0);
    }
    else{  
      fill(0,0,255);
    }
    ellipse(coorx,coory,tcirculo,tcirculo);
  }
}