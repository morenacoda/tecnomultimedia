//video presentación tp3
//https://youtu.be/ZpvKLTmuXNQ


import java.util.ArrayList;

//declaración
ArrayList<Integer> pantallaAnterior = new ArrayList<Integer>();
int estado;
boolean botonEstados;

//dimension/tamaño de mi/s arreglo/s 
int c = 65;

//declaracion del arreglo con su dimension/tamaño
PImage[] escenario =  new PImage[c];
PImage[] accesorio =  new PImage[c];
PImage[] imagenDialogo =  new PImage[c];

// arreglo que contiene el indice de las imagenes de los dialogos
int [] arregloImagenDialogo = {0, 31, 22, 31, 21, 0, 27, 30, 29, 0, 20, 0, 0, 6, 5, 2, 0, 20, 7, 19, 0, 0, 17, 5, 4, 0, 0, 0, 0, 0, 26, 1, 24, 6, 24, 3, 23, 1, 26, 3, 23, 1, 23, 0, 33, 32, 0, 0, 3, 3, 26, 0, 20, 31, 0, 25, 6, 24};

//declaracion del arreglo con su dimension/tamaño
String[] texto = new String[c];

void setup() {
  size (600, 600);
  colorMode(HSB, 360, 100, 100);
  estado = 0;
  botonEstados = true;

  //carga masiva = ciclo for
  for ( int i = 0; i < c; i++ ) {
    escenario[i] = loadImage( "escenario-" + i + ".png" );
    imagenDialogo[i] = loadImage( "dialogo-" + i + ".png" );
    accesorio[i] = loadImage( "accesorio-" + i + ".png" );
  }
  texto  = loadStrings("texto.txt");
}

void draw () {
  switch(estado) {
  case 0:
    estado0();
    break;
  case 1:
    estado1();
    break;
  case 2:
    estado2 ();
    break;
  case 3:
    estado3 ();
    break;
  case 4:
    estado4 ();
    break;
  case 5:
    estado5 ();
    break;
  case 6:
    estado6 ();
    break;
  case 7:
    estado7 ();
    break;
  case 8:
    estado8 ();
    break;
  case 9:
    estado9 ();
    break;
  case 10:
    estado10 ();
    break;
  case 11:
    estado11 ();
    break;
  case 12:
    estado12 ();
    break;
  case 13:
    estado13 ();
    break;
  case 14:
    estado14 ();
    break;
  case 15:
    estado15 ();
    break;
  case 16:
    estado16 ();
    break;
  case 17:
    estado17 ();
    break;
  case 18:
    estado18 ();
    break;
  case 19:
    estado19 ();
    break;
  case 20:
    estado20 ();
    break;
  default:
    println("Fuera de la aventura");
    background (0);
    break;
  }
}


void mousePressed() {
  if ( botonRedondo (565, 35, 25)) {                        //MENU
    if ( estado == 1) {
      mousePresionadoSiguiente(2);
    } else if ( estado == 2) {
      mousePresionadoSiguiente(3);
    } else if ( estado == 3) {
      if (botonEstados) {
        botonEstados=false;
      }
    } else if ( estado == 4) {
      mousePresionadoSiguiente(7);
    } else if ( estado == 5) {
      mousePresionadoSiguiente(6);
    } else if ( estado == 6) {
      pantallaAnterior.add(estado);
      estado=7;
    } else if ( estado == 7) {
      if (botonEstados) {
        botonEstados=false;
      }
    } else if ( estado == 8) {
      pantallaAnterior.add(estado);
      estado=9;
    } else if ( estado == 9) {
      pantallaAnterior.add(estado);
      estado=10;
    } else if ( estado == 10) {
      pantallaAnterior.add(estado);
      botonEstados=true;
      estado=12;
    } else if ( estado == 12) {
      mousePresionadoSiguiente(19);
    } else if ( estado == 19) {
      mousePresionadoSiguiente(20);
    } else if ( estado == 20) {
      if (botonEstados) {
        botonEstados=false;
      }
    } else if ( estado == 13) {
      mousePresionadoSiguiente(15);
    } else if ( estado == 14) {
      pantallaAnterior.add(estado);
      estado=16;
    } else if ( estado == 15) {
      mousePresionadoSiguiente(18);
    } else if ( estado == 16) {
      mousePresionadoSiguiente(18);
    } else if ( estado == 17) {
      mousePresionadoSiguiente(18);
    }
  } else if ( (botonRedondo (35, 35, 22))&&(estado != 0) &&(estado!=18)) {
    mousePresionadoAtras();
  } else if ( (boton (182, 300, 236, 54))&&( estado == 0)) {
    mousePresionadoDecision ( 1, true );
  } else if  ((boton (182, 380, 236, 54))&&(estado == 0)) {
    mousePresionadoDecision ( 18, false );
  } else if ( (estado == 18) && (boton (342, 528, 236, 54)) ) {  // CREDITOS
    pantallaAnterior.clear();
    botonEstados=true;
    estado = 0;                                                       
  } else if ( boton (20, 550, 200, 30 ) ) {      //BOTON IZQUIERDO
    if ( estado == 3 ) {
      mousePresionadoDecision ( 5, true );
    } else if ( estado == 7 ) {
      mousePresionadoDecision ( 11, true );
    } else if ( estado == 11 ) {
      mousePresionadoDecision ( 14, true );
    } else if ( estado == 20 ) {
      mousePresionadoDecision ( 13, true );
    }
  } else if ( boton (380, 550, 200, 30)) {  //BOTON DERECHA
    if ( estado == 3 ) {
      mousePresionadoDecision ( 4, true );
    } else if ( estado == 7 ) {
      mousePresionadoDecision ( 8, true );
    } else if ( estado == 11 ) {
      mousePresionadoDecision ( 12, false );
    } else if ( estado == 20 ) {
      mousePresionadoDecision ( 17, true );
    }
  } 
}
