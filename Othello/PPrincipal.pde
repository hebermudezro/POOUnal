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