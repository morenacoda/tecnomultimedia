
//botones rectangulares
boolean boton (int posx, int posy, int tamx, int tamy) {
  boolean retorno = false;
  if ((mouseX>posx) && (mouseX<posx + tamx) && (mouseY>posy) && (mouseY<posy +tamy ) ) {
    retorno= true;
  }
  return retorno;
}

// dibujo boton cirucular
void dibujobotonsiguiente (boolean siguiente) {
if (siguiente == true){
  int posy= 10;
  int posx= 540;
  int tam= 50;
  
  int circposx= 565;
  int circposy= 35;
  int d= 45;

  if ((mouseX>posx) && (mouseX<posx + tam) && (mouseY>posy) && (mouseY<posy +tam )) {
    fill ( 267, 77, 71,80);
    noStroke ();
    circle (circposx, circposy, d);
  }
  image( accesorio[2], posx, posy, tam, tam );
} else {
   int posy= 10;
  int posx= 10;
  int tam= 50;
  
  int circposx= 35;
  int circposy= 35;
  int d= 45;

  if ((mouseX>posx) && (mouseX<posx + tam) && (mouseY>posy) && (mouseY<posy +tam )) {
    fill ( 267, 77, 71,80);
    noStroke ();
    circle (circposx, circposy, d);
  }
  image( accesorio[1], posx, posy, tam, tam );
}
}


//boton cirucular
boolean botonsiguiente (int posx, int posy, int radio) {
  boolean retorno= false;
  if ( dist(mouseX, mouseY, posx, posy) <= radio) {
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


void dialogo (int comienzo, int finaltexto) {
  int posinicial= 205;
  textSize (13);
  textLeading (17);
  for ( int i = comienzo; i < finaltexto; i++ ) {
    fill (44,54,94);
     strokeJoin(ROUND);
     stroke (0);
     strokeWeight (1);
    rect (30, posinicial, 455, 80, 10);
    fill (0);
    text (texto [i], 35, posinicial, 450, 80);
    image( imagenDialogo[arrayImagenDialogo[i]],510 , posinicial, 80, 80);
    posinicial+=90;
  }

}

void botonDecision(int posx, int posy, String textoboton){
  pushStyle();
  strokeJoin(ROUND);
    if ( boton (posx,posy,200, 30) ){
  fill ( 267, 77, 71, 80);
  }else {
  fill (44,54,94);
  }
  stroke (0);
  strokeWeight (2);

  rect (posx, posy, 200, 30, 20);
  

   fill (0);
  textSize (25);
  text (textoboton, posx+60, posy+25);
  popStyle();

}
