//Esta clase dibuja el tablero de juego
class PJuego extends Pantalla{
  void display(){
    ocultar();
    fondo();
  }
  void fondo(){
    pushStyle();
    stroke(0);
    fill(0);
    rect(32, 96, 257, 257);
    popStyle();
    }
}