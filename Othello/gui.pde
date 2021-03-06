boolean movimiento=true;
public void handleTextEvents(GEditableTextControl textcontrol, GEvent event) {
  textcontrol.getText();
}
public void handleToggleControlEvents(GToggleControl option, GEvent event) {
  option.setSelected(true);
}

public void createGUI() {
  G4P.setGlobalColorScheme(GCScheme.GOLD_SCHEME);
  G4P.setCursor(ARROW);
  modo = new GToggleGroup();
  negras = new GOption(this, 70, 120, 200, 16, "Jugar con negras");
  blancas = new GOption(this, 70, 136, 200, 16, "Jugar con blancas");
  dosjugador = new GOption(this, 70, 154, 200, 16, "Dos Jugadores");
  modo.addControls(negras, blancas, dosjugador);
  negras.setSelected(true);
  dificultad = new GToggleGroup();
  nivel1 = new GOption(this, 70, 184, 120, 16, "Nivel 1");
  nivel2 = new GOption(this, 70, 200, 120, 16, "Nivel 2");
  nivel3 = new GOption(this, 190, 184, 120, 16, "Nivel 3");
  nivel4 = new GOption(this, 192, 200, 120, 16, "Nivel 4");
  dificultad.addControls(nivel1, nivel2, nivel3, nivel4);
  nivel1.setSelected(true);
  limite = new GToggleGroup();
  veinte = new GOption(this, 70, 230, 120, 16, "20 Minutos");
  treinta = new GOption(this, 70, 246, 120, 16, "30 Minutos");
  cuarenta = new GOption(this, 192, 230, 120, 16, "40 Minutos");
  sinlim = new GOption(this, 192, 246, 120, 16, "Sin limite");
  limite.addControls(veinte, treinta, cuarenta, sinlim);
  veinte.setSelected(true);
  blancasnom = new GTextField(this, 70, 281, 160, 16, G4P.SCROLLBARS_NONE);
  blancasnom.setPromptText("Blancas");
  negrasnom = new GTextField(this, 70, 298, 160, 16, G4P.SCROLLBARS_NONE);
  negrasnom.setPromptText("Negras");
}
public void customGUI() {
  G4P.setGlobalColorScheme(GCScheme.GOLD_SCHEME);
  G4P.setCursor(ARROW);
  boton00 = new GImageToggleButton(this, 34, 98, "s2.png", 3, 1);
  boton01 = new GImageToggleButton(this, 66, 98, "s2.png", 3, 1);
  boton02 = new GImageToggleButton(this, 98, 98, "s2.png", 3, 1);
  boton03 = new GImageToggleButton(this, 130, 98, "s2.png", 3, 1);
  boton04 = new GImageToggleButton(this, 162, 98, "s2.png", 3, 1);
  boton05 = new GImageToggleButton(this, 194, 98, "s2.png", 3, 1);
  boton06 = new GImageToggleButton(this, 226, 98, "s2.png", 3, 1);
  boton07 = new GImageToggleButton(this, 258, 98, "s2.png", 3, 1);
  boton10 = new GImageToggleButton(this, 34, 130, "s2.png", 3, 1);
  boton11 = new GImageToggleButton(this, 66, 130, "s2.png", 3, 1);
  boton12 = new GImageToggleButton(this, 98, 130, "s2.png", 3, 1);
  boton13 = new GImageToggleButton(this, 130, 130, "s2.png", 3, 1);
  boton14 = new GImageToggleButton(this, 162, 130, "s2.png", 3, 1);
  boton15 = new GImageToggleButton(this, 194, 130, "s2.png", 3, 1);
  boton16 = new GImageToggleButton(this, 226, 130, "s2.png", 3, 1);
  boton17 = new GImageToggleButton(this, 258, 130, "s2.png", 3, 1);
  boton20 = new GImageToggleButton(this, 34, 162, "s2.png", 3, 1);
  boton21 = new GImageToggleButton(this, 66, 162, "s2.png", 3, 1);
  boton22 = new GImageToggleButton(this, 98, 162, "s2.png", 3, 1);
  boton23 = new GImageToggleButton(this, 130, 162, "s2.png", 3, 1);
  boton24 = new GImageToggleButton(this, 162, 162, "s2.png", 3, 1);
  boton25 = new GImageToggleButton(this, 194, 162, "s2.png", 3, 1);
  boton26 = new GImageToggleButton(this, 226, 162, "s2.png", 3, 1);
  boton27 = new GImageToggleButton(this, 258, 162, "s2.png", 3, 1);
  boton30 = new GImageToggleButton(this, 34, 194, "s2.png", 3, 1);
  boton31 = new GImageToggleButton(this, 66, 194, "s2.png", 3, 1);
  boton32 = new GImageToggleButton(this, 98, 194, "s2.png", 3, 1);
  boton33 = new GImageToggleButton(this, 130, 194, "s2.png", 3, 1);
  boton33.setState(1);
  boton34 = new GImageToggleButton(this, 162, 194, "s2.png", 3, 1);
  boton34.setState(2);
  boton35 = new GImageToggleButton(this, 194, 194, "s2.png", 3, 1);
  boton36 = new GImageToggleButton(this, 226, 194, "s2.png", 3, 1);
  boton37 = new GImageToggleButton(this, 258, 194, "s2.png", 3, 1);
  boton40 = new GImageToggleButton(this, 34, 226, "s2.png", 3, 1);
  boton41 = new GImageToggleButton(this, 66, 226, "s2.png", 3, 1);
  boton42 = new GImageToggleButton(this, 98, 226, "s2.png", 3, 1);
  boton43 = new GImageToggleButton(this, 130, 226, "s2.png", 3, 1);
  boton43.setState(2);
  boton44 = new GImageToggleButton(this, 162, 226, "s2.png", 3, 1);
  boton44.setState(1);
  boton45 = new GImageToggleButton(this, 194, 226, "s2.png", 3, 1);
  boton46 = new GImageToggleButton(this, 226, 226, "s2.png", 3, 1);
  boton47 = new GImageToggleButton(this, 258, 226, "s2.png", 3, 1);
  boton50 = new GImageToggleButton(this, 34, 258, "s2.png", 3, 1);
  boton51 = new GImageToggleButton(this, 66, 258, "s2.png", 3, 1);
  boton52 = new GImageToggleButton(this, 98, 258, "s2.png", 3, 1);
  boton53 = new GImageToggleButton(this, 130, 258, "s2.png", 3, 1);
  boton54 = new GImageToggleButton(this, 162, 258, "s2.png", 3, 1);
  boton55 = new GImageToggleButton(this, 194, 258, "s2.png", 3, 1);
  boton56 = new GImageToggleButton(this, 226, 258, "s2.png", 3, 1);
  boton57 = new GImageToggleButton(this, 258, 258, "s2.png", 3, 1);
  boton60 = new GImageToggleButton(this, 34, 290, "s2.png", 3, 1);
  boton61 = new GImageToggleButton(this, 66, 290, "s2.png", 3, 1);
  boton62 = new GImageToggleButton(this, 98, 290, "s2.png", 3, 1);
  boton63 = new GImageToggleButton(this, 130, 290, "s2.png", 3, 1);
  boton64 = new GImageToggleButton(this, 162, 290, "s2.png", 3, 1);
  boton65 = new GImageToggleButton(this, 194, 290, "s2.png", 3, 1);
  boton66 = new GImageToggleButton(this, 226, 290, "s2.png", 3, 1);
  boton67 = new GImageToggleButton(this, 258, 290, "s2.png", 3, 1);
  boton70 = new GImageToggleButton(this, 34, 322, "s2.png", 3, 1);
  boton71 = new GImageToggleButton(this, 66, 322, "s2.png", 3, 1);
  boton72 = new GImageToggleButton(this, 98, 322, "s2.png", 3, 1);
  boton73 = new GImageToggleButton(this, 130, 322, "s2.png", 3, 1);
  boton74 = new GImageToggleButton(this, 162, 322, "s2.png", 3, 1);
  boton75 = new GImageToggleButton(this, 194, 322, "s2.png", 3, 1);
  boton76 = new GImageToggleButton(this, 226, 322, "s2.png", 3, 1);
  boton77 = new GImageToggleButton(this, 258, 322, "s2.png", 3, 1);
}
GToggleGroup modo; 
GOption negras, blancas, dosjugador; 
GToggleGroup dificultad; 
GOption nivel1, nivel2, nivel3, nivel4; 
GToggleGroup limite; 
GOption veinte, treinta, cuarenta, sinlim; 
GTextField blancasnom, negrasnom;
GImageToggleButton boton00, boton01, boton02, boton03, boton04, boton05, boton06, boton07;
GImageToggleButton boton10, boton11, boton12, boton13, boton14, boton15, boton16, boton17;
GImageToggleButton boton20, boton21, boton22, boton23, boton24, boton25, boton26, boton27;
GImageToggleButton boton30, boton31, boton32, boton33, boton34, boton35, boton36, boton37;
GImageToggleButton boton40, boton41, boton42, boton43, boton44, boton45, boton46, boton47;
GImageToggleButton boton50, boton51, boton52, boton53, boton54, boton55, boton56, boton57;
GImageToggleButton boton60, boton61, boton62, boton63, boton64, boton65, boton66, boton67;
GImageToggleButton boton70, boton71, boton72, boton73, boton74, boton75, boton76, boton77;