import g4p_controls.*;

void setup(){
  size(512,480);
  pantactual = new PInicio();
  pantinteractiva = new PInicio();
}
void draw(){
    pantactual.display();
    pantinteractiva.display();
}
void keyPressed(){
  if (key =='*'){
    pantactual = new PPrincipal();
    pantinteractiva = new PSeleccion();
    createGUI();
  }
  if(key== '/'){
    pantactual = new PPrincipal();
    pantinteractiva = new PJuego();
    customGUI();
  }
}

  