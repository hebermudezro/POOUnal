//Esta clase unicamente dibuja la pantalla de sellecion de opciones
class PSeleccion extends Pantalla {
  void display() {
    fondo();
      }
  void fondo() {
    pushStyle();
    strokeWeight(4);
    stroke(255, 200, 184);
    fill(40, 0, 184);
    rect(32, 96, 254, 254);
    strokeWeight(2);
    rect(38, 102, 242, 242);
    textSize(14);
    fill(200, 240, 128);
    text(texto(0), 48, 120);
    text(texto(1), 48, 184);
    text(texto(2), 48, 228);
    text(texto(3), 48, 274);
    popStyle();
  }
  String texto(int n) {
    String salida []={"Modo de juego:", "Nivel de IA:", 
      "Limite Tiempo:", "Nombre jugadores:"};
    return salida[n];
  }
}