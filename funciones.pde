//LOGICA BOTONES RECTANGULARES
boolean boton (int posX, int posY, int tamX, int tamY) {
  boolean retorno = false;
  if ((mouseX>posX) && (mouseX<posX + tamX) && (mouseY>posY) && (mouseY<posY +tamY ) ) {
    retorno= true;
  }
  return retorno;
}

// DIBUJO BOTON CIRCULAR
void dibujoBotonRedondo (boolean siguiente) {
  int posY= 10;
  int tam= 50;
  int circPosY= 35;
  int d= 45;
  if (siguiente == true) {
    int posX= 540;
    int circPosX= 565;
    if (boton (posX, posY, tam, tam)) {
      fill ( 267, 77, 71, 80);
      noStroke ();
      circle (circPosX, circPosY, d);
    }
    image( accesorio[2], posX, posY, tam, tam );
  } else {
    int posX= 10;
    if (boton (posX, posY, tam, tam)) {
      fill ( 267, 77, 71, 80);
      noStroke ();
      circle (circPosY, circPosY, d);
    }
    image( accesorio[1], posX, posY, tam, tam );
  }
}

//LOGICA BOTON CIRCULAR
boolean botonRedondo (int posX, int posY, int radio) {
  boolean retorno= false;
  if ( dist(mouseX, mouseY, posX, posY) <= radio) {
    retorno= true;
  }
  return retorno;
}

//TEXTOS
void desarrollo (int i, int tam) {
  fill (0);
  textSize (tam);
  textLeading (17);
  text (texto [i], 135, 40, 380, 200);
}

//DIALOGOS
void dialogo (int comienzo, int finalTexto) {
  int posInicial= 205;
  textSize (13);
  textLeading (17);
  for ( int i = comienzo; i < finalTexto; i++ ) {
    fill (44, 54, 94);
    strokeJoin(ROUND);
    stroke (0);
    strokeWeight (1);
    rect (30, posInicial, 455, 80, 10);
    fill (0);
    text (texto [i], 35, posInicial, 450, 80);
    image( imagenDialogo [ arregloImagenDialogo[ i ] ], 510, posInicial, 80, 80);
    posInicial+=90;
  }
}

//DIBUJO BOTON DE DECISIONES
void botonDecision(int posX, int posY, String textoBoton) {
  pushStyle();
  strokeJoin(ROUND);
  if ( boton (posX, posY, 200, 30) ) {
    fill ( 267, 77, 71, 80);
  } else {
    fill (44, 54, 94);
  }
  stroke (0);
  strokeWeight (2);
  rect (posX, posY, 200, 30, 20);
  fill (0);
  textSize (25);
  text (textoBoton, posX+60, posY+25);
  popStyle();
}

// FUNCIONES DE ESTADOS PARA DIBUJAR LAS PANTALLAS

// DIBUJO ENCABEZADO PANTALLA
void encabezado (String escenaText, int escena, int tamPapiroY, boolean botonAtras, boolean botonSig  ) {
  println( "escena-"+escenaText );
  image( escenario[escena], 0, 0 );
  image( accesorio[0], 10, 10, 580, tamPapiroY);
  if (botonAtras) {
    dibujoBotonRedondo (false);
  }
  if (botonSig) {
    dibujoBotonRedondo (true);
  }
}

// DIBUJO DE ESCENAS
void estado0 () {
  encabezado ( "menu", 0, 0, false, false );
}

void estado1 () {
  encabezado ( "1", 1, 150, true, true );
  desarrollo (0, 15);
  if (!botonEstados) {
    dialogo (1, 5);
  }
}

void estado2 () {
  encabezado ("2", 2, 120, true, true );
  desarrollo (5, 15);
  if (!botonEstados) {
    dialogo (6, 9);
  }
}

void estado3 () {
  encabezado ("3-decisión", 3, 200, true, false );
  if (botonEstados) {
    dibujoBotonRedondo (true);
  }
  desarrollo (9, 15);
  if (!botonEstados) {
    dialogo (10, 11);
    botonDecision(20, 550, "Familia");
    botonDecision(380, 550, "Fantasma");
  }
}

void estado4 () {
  encabezado ("4", 4, 180, true, true );
  desarrollo (12, 15);
  if (!botonEstados) {
    dialogo (13, 16);
  }
}

void estado5 () {
  encabezado ("5", 5, 100, true, true );
  desarrollo (16, 15);
  if (!botonEstados) {
    dialogo (17, 20);
  }
}

void estado6 () {
  encabezado ("6", 6, 180, true, true );
  desarrollo (20, 15);
}

void estado7 () {
  encabezado ("7-decisión", 7, 200, true, false );
  if (botonEstados) {
    dibujoBotonRedondo (true);
  }
  desarrollo (21, 15);
  if (!botonEstados) {
    dialogo (22, 25);
    botonDecision(20, 550, "Familia");
    botonDecision(380, 550, "Fantasma");
  }
}

void estado8 () {
  encabezado ("8", 4, 250, true, true );
  desarrollo (25, 14);
}

void estado9 () {
  encabezado ("9", 9, 250, true, true );
  desarrollo (26, 13);
}

void estado10 () {
  encabezado ("10", 4, 220, true, true );
  desarrollo (27, 15);
}

void estado11 () {
  encabezado ("11- decision", 5, 180, true, false );
  desarrollo (28, 15);
  botonDecision(20, 550, "Familia");
  botonDecision(380, 550, "Virginia");
}

void estado12 () {
  encabezado ("12", 12, 160, true, true );
  desarrollo (29, 15);
  if (!botonEstados) {
    dialogo (30, 34);
  }
}

void estado13 () {
  encabezado ("13", 13, 0, true, true );
  if (!botonEstados) {
    dialogo (42, 46);
  }
}

void estado14 () {
  encabezado ("14", 14, 200, true, true );
  desarrollo (47, 15);
}

void estado15 () {
  encabezado ("15-fin", 15, 200, true, true );
  desarrollo (48, 15);
  if (!botonEstados) {
    dialogo (49, 51);
  }
}

void estado16 () {
  encabezado ("16-fin", 1, 120, true, true );
  desarrollo (51, 15);
  if (!botonEstados) {
    dialogo (52, 54);
  }
}

void estado17 () {
  encabezado ("17-fin", 12, 0, true, true );
  if (!botonEstados) {
    dialogo (54, 58);
  }
}

void estado18 () {
  encabezado ("18-creditos", 16, 0, false, false );
}

void estado19 () {
  encabezado ("19", 12, 160, true, true );
  desarrollo (29, 15);
  if (!botonEstados) {
    dialogo (34, 38);
  }
}

void estado20 () {
  encabezado ("20-decisión", 12, 160, true, false );
  if (botonEstados) {
    dibujoBotonRedondo (true);
  }
  desarrollo (29, 15);
  if (!botonEstados) {
    dialogo (38, 42);
    botonDecision(20, 550, "Si acepta");
    botonDecision(380, 550, "Se niega");
  }
}

// FUNCION PARA ALGUNOS ESTADOS DEL MOUSEPRESSED
void mousePresionadoSiguiente ( int estadoSiguiente ) {
    if (botonEstados) {
      pantallaAnterior.add(estado);
      botonEstados=false;
    } else if (!botonEstados) {
      estado= estadoSiguiente;
      botonEstados=true;
    }
  }
  
  void mousePresionadoAtras () {
    botonEstados=true;
    estado= pantallaAnterior.get(pantallaAnterior.size()-1);
    pantallaAnterior.remove(pantallaAnterior.size()-1);
  }
  
  void mousePresionadoDecision ( int estadoSiguiente, boolean botonEstado ) {
    pantallaAnterior.add(estado);
    botonEstados=botonEstado;
    estado = estadoSiguiente;
  }
