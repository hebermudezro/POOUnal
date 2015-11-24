
public void handleToggleButtonEvents(GImageToggleButton button, GEvent event) {
  int n=0;
  int coor[]=new int[2];
  if (movimiento==true) {
    n=2;
    button.setState(2);
    movimiento=false;
    coor=coordenadas(button, event);
    convertirN(coor[0], coor[1]);
  } else {
    n=1;
    button.setState(1);
    movimiento=true;
    coor=coordenadas(button, event);
    convertirB(coor[0], coor[1]);
  }
}
public void convertirN(int x, int y) {
  int cortempx=x;
  int cortempy=y;
  int temp=0;
bucleN:
  {
    for (int i=y+1; i<8; i++) {
      temp=leerValor(x, i);
      if (temp==1) {
        ponerValor(x, i, 2);
      }
      if (temp==2) {
        break bucleN;
      }
      if (temp==0) {
        break;
      }
    }
    for (int i=y-1; i>=0; i--) {
      temp=leerValor(x, i);
      if (temp==1) {
        ponerValor(x, i, 2);
      }
      if (temp==2) {
        break bucleN;
      }
      if (temp==0) {
        break;
      }
    }
    for (int j=x+1; j<8; j++) {
      temp=leerValor(j, y);
      if (temp==1) {
        ponerValor(j, y, 2);
      }
      if (temp==2) {
        break bucleN;
      }
      if (temp==0) {
        break;
      }
    }
    for (int j=x-1; j>=0; j--) {
      temp=leerValor(j, y);
      if (temp==1) {
        ponerValor(j, y, 2);
      }
      if (temp==2) {
        break bucleN;
      }
      if (temp==0) {
        break;
      }
    }
    for (int i=y+1; i<8; i++) {
      temp=leerValor(cortempx+1, i);
      if (temp==1) {
        ponerValor(cortempx+1, i, 2);
        cortempx++;
      }
      if (temp==2) {
        break bucleN;
      }
      if (temp==0) {
        break;
      }
    }
    cortempx=x;
    for (int i=y-1; i>=0; i--) {
      temp=leerValor(cortempx-1, i);
      if (temp==1) {
        ponerValor(cortempx-1, i, 2);
        cortempx--;
      }
      if (temp==2) {
        break bucleN;
      }
      if (temp==0) {
        break;
      }
    }
    for (int j=x+1; j<8; j++) {
      temp=leerValor(j, cortempy-1);
      if (temp==1) {
        ponerValor(cortempy-1, y, 2);
        cortempy--;
      }
      if (temp==2) {
        break bucleN;
      }
      if (temp==0) {
        break;
      }
    }
    cortempy=y;
    for (int j=x-1; j>=0; j--) {
      temp=leerValor(j, cortempy+1);
      if (temp==1) {
        ponerValor(j, cortempy+1, 2);
        cortempy++;
      }
      if (temp==2) {
        break bucleN;
      }
      if (temp==0) {
        break;
      }
    }
  }
}
public void convertirB(int x, int y) {
  //Este metodo realiza la conversion de las fichas de un color a otro, dependiendo la ubcacion dela siguiente ficha del mismo color
  int temp=0;
  int cortempx=x;
  int cortempy=y;
bucleB:
  {
    for (int i=y+1; i<8; i++) {
      temp=leerValor(x, i);
      if (temp==1) {
        break bucleB;
      }
      if (temp==2) {
        ponerValor(x, i, 1);
      }
      if (temp==0) {
        break;
      }
    }
    for (int i=y-1; i>=0; i--) {
      temp=leerValor(x, i);
      if (temp==1) {
        break bucleB;
      }
      if (temp==2) {

        ponerValor(x, i, 1);
      }
      if (temp==0) {
        break;
      }
    }
    for (int j=x+1; j<8; j++) {
      temp=leerValor(j, y);
      if (temp==1) {
        break bucleB;
      }
      if (temp==2) {
        ponerValor(j, y, 1);
      }
      if (temp==0) {
        break;
      }
    }
    for (int j=x-1; j>=0; j--) {
      temp=leerValor(j, y);
      if (temp==1) {
        break bucleB;
      }
      if (temp==2) {
        ponerValor(j, y, 1);
      }
      if (temp==0) {
        break;
      }
    }
    for (int i=y+1; i<8; i++) {
      temp=leerValor(cortempx+1, i);
      if (temp==1) {
        break bucleB;
      }
      if (temp==2) {
        ponerValor(cortempx+1, i, 1);
        cortempx++;
      }
      if (temp==0) {
        break;
      }
    }
    cortempx=x;
    for (int i=y-1; i>=0; i--) {
      temp=leerValor(cortempx-1, i);
      if (temp==1) {
        break bucleB;
      }
      if (temp==2) {
        ponerValor(cortempx-1, i, 1);
        cortempx--;
      }
      if (temp==0) {
        break;
      }
    }
    for (int j=x+1; j<8; j++) {
      temp=leerValor(j, cortempy-1);
      if (temp==1) {
        break bucleB;
        
      }
      if (temp==2) {
        ponerValor(cortempy-1, y, 1);
        cortempy--;
      }
      if (temp==0) {
        break;
      }
    }
    cortempy=y;
    for (int j=x-1; j>=0; j--) {
      temp=leerValor(j, cortempy+1);
      if (temp==1) {
        break bucleB;
      }
      if (temp==2) {
        ponerValor(j, cortempy+1, 1);
        cortempy++;
      }
      if (temp==0) {
        break;
      }
    }
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