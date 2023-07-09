

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
