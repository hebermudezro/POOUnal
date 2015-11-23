boolean movimiento=true;
public void handleToggleButtonEvents(GImageToggleButton button, GEvent event) {
  int n=0;
  int coor[]=new int[2];
  if (movimiento==true) {
    n=2;
    println(n);
    movimiento=false;
    coor=coordenadas(button, event);
    println(coor);
  } else {
    n=1;
    println(n);
    movimiento=true;
    coor=coordenadas(button, event);
    println(coor);
  }
}
  public void ocultar() {//Este metodo lo uso para borrar el menu de seleccion
    negras.setVisible(false);
    blancas.setVisible(false);
    dosjugador.setVisible(false);
    nivel1.setVisible(false);
    nivel2.setVisible(false);
    nivel3.setVisible(false);
    nivel4.setVisible(false);
    veinte.setVisible(false);
    treinta.setVisible(false);
    cuarenta.setVisible(false);
    sinlim.setVisible(false);
    blancasnom.setVisible(false);
    negrasnom.setVisible(false);
  }