import g4p_controls.*;

Pantalla pantactual;
Pantalla pantinteractiva;
void setup(){
  size(512,480);
  smooth();
  pantactual = new PInicio();
  //pantactual = new PPrincipal();
  pantinteractiva = new PInicio();
  //pantinteractiva = new PSeleccion();
}
void draw(){
  show();
}
void show(){
    pantactual.display();
  pantinteractiva.display();
}
void keyPressed(){
  if (key =='*'){
    pantactual = new PPrincipal();
    pantinteractiva = new PSeleccion();
    createGUI();}
  if(key== '/'){
    pantactual = new PPrincipal();
    pantinteractiva = new PJuego();
  }
}

  