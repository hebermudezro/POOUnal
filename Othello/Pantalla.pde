Pantalla pantactual;
Pantalla pantinteractiva;

abstract class Pantalla{
  abstract void display();
}
//Esta clase unicamente dibuja la pantalla de inicio
class PInicio extends Pantalla{
  void display() {
    fondo();
    simbolos();
    texto();
    ramaI();
    ramaD();
    hojasI();
    hojasD();
    tituloFondo();
    titulo();
  }
  void fondo(){
    pushStyle();
    noFill();
    stroke(188);
    strokeWeight(4);
    background(127);
    rect(20, 36, 472, 408, 8);
    rect(36, 52, 440, 376, 8);
    popStyle();
  }
  void simbolos() {
    pushStyle();
    stroke(188);
    fill(127);
    strokeWeight(2);
    rect(46, 405, 32, 48);
    rect(434, 405, 32, 48);
    popStyle();
  }
  void texto() {
    pushStyle();
    fill(188);
    textSize(14);
    text("Basado en 'Othello - NES (1984)'", 150, 300);
    text("Universidad Nacional de Colombia, 2015", 120, 340);
    text("Presione '*' para continuar", 160, 380);
    popStyle();
  }
  void ramaI() {
    int x, y;
    pushStyle();
    noFill();
    strokeWeight(4);
    stroke(56, 108, 0);
    beginShape();
    curveVertex(258, 262);
    curveVertex(258, 262);
    x=252;
    for (int i=1; i<=10; i++) {
      if (i%2!=0) {
        x-=16;
        y=236;
        curveVertex(x, y);
      } else {
        x-=16;
        y=240;
        curveVertex(x, y);
      }
    }
    curveVertex(96, 220);
    curveVertex(92, 204);
    curveVertex(96, 188);
    curveVertex(92, 172);
    curveVertex(96, 154);
    curveVertex(92, 132);
    curveVertex(92, 116);
    curveVertex(92, 116);
    endShape();
    popStyle();
  }
  void ramaD() {
    int x, y;
    pushStyle();
    noFill();
    strokeWeight(4);
    stroke(56, 108, 0);
    beginShape();
    curveVertex(246, 262);
    curveVertex(246, 262);
    x=256;
    for (int i=1; i<=10; i++) {
      if (i%2!=0) {
        x+=16;
        y=236;
        curveVertex(x, y);
      } else {
        x+=16;
        y=240;
        curveVertex(x, y);
      }
    }
    curveVertex(412, 220);
    curveVertex(416, 204);
    curveVertex(412, 188);
    curveVertex(416, 172);
    curveVertex(412, 154);
    curveVertex(416, 132);
    curveVertex(416, 116);
    curveVertex(416, 116);
    endShape();
    popStyle();
  }
  void hojasI() {
    pushStyle();
    noStroke();
    fill(80, 160, 0);
    int x=220;
    int y=244;
    for (int i=0; i<4; i++) {
      beginShape();
      vertex(x, y);
      bezierVertex(x-2, y-8, x-12, y-4, x-20, y+6);
      bezierVertex(x-12, y+4, x-2, y+8, x, y);
      endShape();
      x-=32;
    }
    for (int j=0; j<5; j++) {
      beginShape();
      vertex(x, y);
      bezierVertex(x+8, y-2, x+4, y-12, x-6, y-20);
      bezierVertex(x-4, y-12, x-8, y-2, x, y);
      endShape();
      y-=32;
    }
    popStyle();
  }
  void hojasD() {
    pushStyle();
    noStroke();
    fill(80, 160, 0);
    int x=290;
    int y=244;
    for (int i=0; i<4; i++) {
      beginShape();
      vertex(x, y);
      bezierVertex(x+2, y-8, x+12, y-4, x+20, y+6);
      bezierVertex(x+12, y+4, x+2, y+8, x, y);
      endShape();
      x+=32;
    }
    for (int j=0; j<5; j++) {
      beginShape();
      vertex(x, y);
      bezierVertex(x-8, y-2, x-4, y-12, x+6, y-20);
      bezierVertex(x+4, y-12, x+8, y-2, x, y);
      endShape();
      y-=32;
    }
    popStyle();
  }
  void tituloFondo(){
    pushStyle();
    noStroke();
    fill(255,160,0);
    rect(110,110,288,112);
    fill(192,112,0);
    rect(114,114,280,104);
    fill(255,160,0);
    rect(116,116,276,100);
    fill(192,112,0);
    rect(118,118,272,96);
    popStyle();
  }
  void titulo(){
    pushStyle();
    noStroke();
    fill(120,64,0);
    ellipseMode(CORNER);
    ellipse(126,126,60,80);
    rect(190,132,14,50);
    rect(190,178,22,28,0,0,0,14);
    rect(180,150,28,10);
    rect(212,126,14,80);
    ellipse(212,152,44,40);
    rect(242,172,14,34);
    ellipse(258,146,48,60);
    rect(306,126,14,80);
    rect(322,126,14,80);
    ellipse(334,146,48,60);
    fill(192,112,0);
    ellipse(140,140,32,52);
    rect(204,170,8,22,0,0,0,4);
    ellipse(226,166,16,16);
    rect(226,174,16,20);
    ellipse(272,160,20,32);
    rect(278,182,28,4);
    ellipse(348,160,20,32);
    fill(120,64,0);
    rect(266,170,32,12);
    popStyle();
  }
}
//Esta clase unicamente dibuja el fondo de la pantalla principal
class PPrincipal extends Pantalla {
void display() {
    principal();
  }
  void principal() {
    pushStyle();
    noStroke();
    background(127); 
    fill(192, 112, 0);
    rect(0, 28, 318, 384, 12);
    fill(120, 64, 0);
    rect(6, 34, 306, 372, 8);
    fill(192, 112, 0);
    rect(10, 38, 298, 364, 4);
    fill(188);
    rect(16, 78, 286, 288);
    fill(120, 64, 0);
    rect(18, 80, 282, 284);
    popStyle();
    simbolos();
  }
  void simbolos() {
    pushStyle();
    strokeWeight(2);
    stroke(120, 64, 0);
    fill(192, 112, 0);
    rect(32, 30, 38, 46);
    rect(256, 366, 38, 46);
    popStyle();
    derecha1();
  }
  void derecha1() {
    pushStyle();
    strokeWeight(4);
    stroke(188);
    fill(40, 0, 184);
    rect(320, 30, 158, 62);
    strokeWeight(2);
    rect(326, 36, 146, 50);
    titulo();
  }
  void titulo() {
    pushStyle();
    noStroke();
    fill(255, 240, 144);
    ellipseMode(CORNER);
    ellipse(336, 46, 24, 30);
    rect(362, 48, 6, 22);
    rect(362, 68, 10, 8, 0, 0, 0, 3);
    rect(358, 54, 14, 4);
    rect(374, 46, 6, 30);
    ellipse(374, 54, 20, 20);
    rect(388, 64, 6, 12);
    ellipse(396, 54, 20, 22);
    rect(418, 46, 6, 30);
    rect(426, 46, 6, 30);
    ellipse(434, 54, 20, 22);
    fill(40, 0, 184);
    ellipse(342, 52, 12, 18);
    rect(368, 60, 4, 10, 0, 0, 0, 2);
    ellipse(380, 60, 8, 8);
    rect(380, 64, 8, 10);
    ellipse(402, 58, 8, 14);
    rect(404, 68, 14, 2);
    ellipse(438, 58, 12, 14);
    fill(255, 240, 144);
    rect(400, 64, 14, 4);
    popStyle();
    derecha2();
  }
  void derecha2() {
    pushStyle();
    strokeWeight(4);
    stroke(188);
    fill(40, 0, 184);
    rect(320, 110, 158, 190);
    strokeWeight(2);
    rect(326, 116, 146, 178);
    popStyle();
    derecha3();
  }
  void derecha3() {
    pushStyle();
    strokeWeight(4);
    stroke(188);
    fill(40, 0, 184);
    rect(320, 300, 158, 110);
    strokeWeight(2);
    rect(326, 306, 146, 98);
    popStyle();
  }
}
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