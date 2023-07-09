import java.util.ArrayList;

//declaración
ArrayList<Integer> pantallaAnterior = new ArrayList<Integer>();

int estado;
boolean botonestados;


//dimension/tamaño de mi/s arreglo/s (util para los fors)
int c = 25;

//declaracion del arreglo con su dimension/tamaño
PImage[] escenario =  new PImage[c];
PImage[] accesorio =  new PImage[c];
//declaracion del arreglo con su dimension/tamaño
String[] textos = new String[c];


void setup() {
  size (600, 600);
  colorMode(HSB, 360, 100, 100);
  estado = 0;
  botonestados = true;


  //carga masiva = ciclo for
  for ( int i = 0; i < c; i++ ) {
    escenario[i] = loadImage( "escenario-" + i + ".png" );
  }

  for ( int i = 0; i < c; i++ ) {
    accesorio[i] = loadImage( "accesorio-" + i + ".png" );
  }
  // //metodo 2: utilizar la funcion loadStrings() para cargar desde un archivo de texto
  //textos = loadStrings("textos.txt");
  ////println( textos );
  //for( int i = 0 ; i < c ; i++ ){
  //  println( i + ": " + textos[i] );
  //}
}

void draw () {

  switch(estado) {
  case 0:
    println( "estas en el menu" );
    background (200, 0, 0);
    image( escenario[0], 0, 0 );


    break;
  case 1:
    println( "P01" );
    background (150, 0, 0);

    image( escenario[1], 0, 0 );

    image( accesorio[0], 10, 10, 580, 200);
    dibujobotonsiguiente (true);
    dibujobotonsiguiente (false);
    break;
  case 2:
    println( "P02" );
    background (0, 100, 0);

    image( escenario[2], 0, 0 );
    image( accesorio[0], 10, 10, 580, 200);
    dibujobotonsiguiente (true);
    dibujobotonsiguiente (false);
    break;
  case 3:
    println( "P03 - DECISION" );
    background (0, 200, 0);

    image( escenario[3], 0, 0 );
    image( accesorio[0], 10, 10, 580, 200);
    dibujobotonsiguiente (false);
    break;
  case 4:
    println( "P04" );
    background (0, 0, 200);

    image( escenario[4], 0, 0 );
    image( accesorio[0], 10, 10, 580, 200);
    dibujobotonsiguiente (true);
    dibujobotonsiguiente (false);
    break;
  case 5:
    println( "P05" );
    background (100, 0, 100);

    image( escenario[5], 0, 0 );
    image( accesorio[0], 10, 10, 580, 200);
    dibujobotonsiguiente (true);
    dibujobotonsiguiente (false);
    break;
  case 6:
    println( "P06" );
    background (100, 0, 0);

    image( escenario[6], 0, 0 );
    image( accesorio[0], 10, 10, 580, 200);
    dibujobotonsiguiente (true);
    dibujobotonsiguiente (false);
    break;
  case 7:
    println( "P07 - DECISION" );
    background (0, 200, 200);

    image( escenario[7], 0, 0 );
    image( accesorio[0], 10, 10, 580, 200);
    dibujobotonsiguiente (false);
    break;
  case 8:
    println( "P08" );
    background (0, 0, 100);

    image( escenario[4], 0, 0 );
    image( accesorio[0], 10, 10, 580, 200);
    dibujobotonsiguiente (true);
    dibujobotonsiguiente (false);
    break;
  case 9:
    println( "P09" );
    background (0, 0, 200);

    image( escenario[9], 0, 0 );
    image( accesorio[0], 10, 10, 580, 200);
    dibujobotonsiguiente (true);
    dibujobotonsiguiente (false);
    break;
  case 10:
    println( "P10" );
    background (0, 200, 0);

    image( escenario[4], 0, 0 );
    image( accesorio[0], 10, 10, 580, 200);
    dibujobotonsiguiente (true);
    dibujobotonsiguiente (false);
    break;
  case 11:
    println( "P11 - DECISION" );
    background (0, 150, 0);

    image( escenario[11], 0, 0 );
    image( accesorio[0], 10, 10, 580, 200);
    dibujobotonsiguiente (false);
    break;
  case 12:
    println( "P12 - DECISION" );
    background (200, 0, 0);

    image( escenario[12], 0, 0 );
    image( accesorio[0], 10, 10, 580, 200);
    dibujobotonsiguiente (false);
    break;
  case 13:
    println( "P13" );
    background (0, 0, 150);

    image( escenario[13], 0, 0 );
    image( accesorio[0], 10, 10, 580, 200);
    dibujobotonsiguiente (true);
    dibujobotonsiguiente (false);
    break;
  case 14:
    println( "P14" );
    background (0, 0, 200);

    image( escenario[14], 0, 0 );
    image( accesorio[0], 10, 10, 580, 200);
    dibujobotonsiguiente (true);
    dibujobotonsiguiente (false);
    break;
  case 15:
    println( "P15- FIN" );
    background (0, 150, 0);

    image( escenario[15], 0, 0 );
    image( accesorio[0], 10, 10, 580, 200);
    dibujobotonsiguiente (true);
    dibujobotonsiguiente (false);
    break;
  case 16:
    println( "P16 - FIN" );
    background (150, 0, 0);

    image( escenario[1], 0, 0 );
    image( accesorio[0], 10, 10, 580, 200);
    dibujobotonsiguiente (true);
    dibujobotonsiguiente (false);
    break;
  case 17:
    println( "P17- FIN" );
    background (0, 0, 150);

    image( escenario[17], 0, 0 );
    image( accesorio[0], 10, 10, 580, 200);
    dibujobotonsiguiente (true);
    dibujobotonsiguiente (false);
    break;
  case 18:
    println( "P18- CREDITOS" );
    background (200);

    image( escenario[18], 0, 0 );

    break;
  default:
    println("Fuera de la aventura");
    background (0);
    break;
  }
}


void mousePressed() {

  if ( botonsiguiente (565, 35, 25)) {                        //MENU
    if ( estado == 1) {
      pantallaAnterior.add(estado);
      estado = 2;
    } else if ( estado == 2) {
      pantallaAnterior.add(estado);
      estado = 3;
    } else if ( estado == 4) {
      pantallaAnterior.add(estado);
      estado = 7;
    } else if ( estado == 5) {
      pantallaAnterior.add(estado);
      estado = 6;
    } else if ( estado == 6) {
      pantallaAnterior.add(estado);
      estado = 7;
    } else if ( estado == 8) {
      pantallaAnterior.add(estado);
      estado = 9;
    } else if ( estado == 9) {
      pantallaAnterior.add(estado);
      estado = 10;
    } else if ( estado == 10) {
      pantallaAnterior.add(estado);
      estado = 12;
    } else if ( estado == 13) {
      pantallaAnterior.add(estado);
      estado = 15;
    } else if ( estado == 14) {
      pantallaAnterior.add(estado);
      estado = 16;
    } else if ( estado == 15) {
      pantallaAnterior.add(estado);
      estado = 18;
    } else if ( estado == 16) {
      pantallaAnterior.add(estado);
      estado = 18;
    } else if ( estado == 17) {
      pantallaAnterior.add(estado);
      estado = 18;
    }
  } else if ( (botonsiguiente (35, 35, 22))&&(estado != 0) ) {
    estado= pantallaAnterior.get(pantallaAnterior.size()-1);
    pantallaAnterior.remove(pantallaAnterior.size()-1);
  } else if ( (boton (182, 300, 236, 54))&&( estado == 0)) {
    pantallaAnterior.add(estado);
    estado = 1;
  } else if  ((boton (182, 380, 236, 54))&&(estado == 0)) {
    pantallaAnterior.add(estado);
    estado = 18;
  } else if ( estado == 3  && boton (23, 431, 165, 157)) {  //izquierda pantalla
    pantallaAnterior.add(estado);
    estado = 5;
  } else if ( estado == 3 && boton (413, 431, 165, 157)) {  //derecha pantalla
    pantallaAnterior.add(estado);
    estado = 4;
  } else if ( estado == 7 &&  boton (23, 431, 165, 157)) {  //izquierda pantalla
    pantallaAnterior.add(estado);
    estado = 11;
  } else if ( estado == 7 && boton (413, 431, 165, 157)) {  //derecha pantalla
    pantallaAnterior.add(estado);
    estado = 8;
  } else if ( estado == 11 &&  boton (23, 431, 165, 157)) {  //izquierda pantalla
    pantallaAnterior.add(estado);
    estado = 14;
  } else if ( estado == 11 && boton (413, 431, 165, 157)) {  //derecha pantalla
    pantallaAnterior.add(estado);
    estado = 12;
  } else if ( estado == 12 &&  boton (23, 431, 165, 157)) {  //izquierda pantalla
    pantallaAnterior.add(estado);
    estado = 13;
  } else if ( estado == 12 &&  boton (413, 431, 165, 157)) {  //derecha pantalla
    pantallaAnterior.add(estado);
    estado = 17;                                                        //SEGUNDO FINAL
  } else if ( estado == 18 && boton (342, 528, 236, 54) ) {
    pantallaAnterior.clear();
    estado = 0;                                                        //TERCER FINAL
  }
}

//  if ( estado == 0) {                         //MENU
//    if ( boton (182, 300, 236, 54)) {
//      pantallaAnterior.add(estado);
//      estado = 1;
//    } else if  (boton (182, 380, 236, 54)) {
//      pantallaAnterior.add(estado);
//      estado = 18;
//    }
//  } else if ( estado == 1 ) {
//    if ( botonsiguiente (565, 35, 25)) {
//      pantallaAnterior.add(estado);
//      estado = 2;
//    } else if ( botonsiguiente (35, 35, 22)) {
//      estado= pantallaAnterior.get(pantallaAnterior.size()-1);
//      pantallaAnterior.remove(pantallaAnterior.size()-1);
//    }
//  } else if  ( estado == 2 && botonsiguiente (565, 35, 25)) {
//    pantallaAnterior.add(estado);
//    estado = 3;
//  } else if ( estado == 3  && boton (23, 431, 165, 157)) {  //izquierda pantalla
//    pantallaAnterior.add(estado);
//    estado = 5;
//  } else if ( estado == 3 && boton (413, 431, 165, 157)) {  //derecha pantalla
//    pantallaAnterior.add(estado);
//    estado = 4;
//  } else if ( estado == 5 && botonsiguiente (565, 35, 25)) {
//    pantallaAnterior.add(estado);
//    estado = 6;
//  } else if ( estado == 6 && botonsiguiente (565, 35, 25) ) {
//    pantallaAnterior.add(estado);
//    estado = 7;
//  } else if ( estado == 4 && botonsiguiente (565, 35, 25)) {
//    pantallaAnterior.add(estado);
//    estado = 7;
//  } else if ( estado == 7 &&  boton (23, 431, 165, 157)) {  //izquierda pantalla
//    pantallaAnterior.add(estado);
//    estado = 11;
//  } else if ( estado == 7 && boton (413, 431, 165, 157)) {  //derecha pantalla
//    pantallaAnterior.add(estado);
//    estado = 8;
//  } else if ( estado == 8 && botonsiguiente (565, 35, 25)) {
//    pantallaAnterior.add(estado);
//    estado = 9;
//  } else if ( estado == 9 && botonsiguiente (565, 35, 25) ) {
//    pantallaAnterior.add(estado);
//    estado = 10;
//  } else if ( estado == 10 && botonsiguiente (565, 35, 25)) {
//    pantallaAnterior.add(estado);
//    estado = 12;
//  } else if ( estado == 11 &&  boton (23, 431, 165, 157)) {  //izquierda pantalla
//    pantallaAnterior.add(estado);
//    estado = 14;
//  } else if ( estado == 11 && boton (413, 431, 165, 157)) {  //derecha pantalla
//    pantallaAnterior.add(estado);
//    estado = 12;
//  } else if ( estado == 14 && botonsiguiente (565, 35, 25)) {
//    pantallaAnterior.add(estado);
//    estado = 16;                                                         //PRIMER FINAL
//  } else if ( estado == 12 &&  boton (23, 431, 165, 157)) {  //izquierda pantalla
//    pantallaAnterior.add(estado);
//    estado = 13;
//  } else if ( estado == 12 &&  boton (413, 431, 165, 157)) {  //derecha pantalla
//    pantallaAnterior.add(estado);
//    estado = 17;                                                        //SEGUNDO FINAL
//  } else if ( estado == 13 && botonsiguiente (565, 35, 25) ) {
//    pantallaAnterior.add(estado);
//    estado = 15;                                                        //TERCER FINAL
//  } else if ( estado == 15 || estado == 16 || estado == 17 && botonsiguiente (565, 35, 25) ) {
//    pantallaAnterior.add(estado);
//    estado = 18;                                                        //CREDITOS
//  } else if ( estado == 18 && boton (342, 528, 236, 54) ) {
//    pantallaAnterior.clear();
//    estado = 0;                                                        //TERCER FINAL
//  }
//}
