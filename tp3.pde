import java.util.ArrayList;

//declaración
ArrayList<Integer> pantallaAnterior = new ArrayList<Integer>();

int estado;
int dialogo;
boolean botonestados;


//dimension/tamaño de mi/s arreglo/s (util para los fors)
int c = 65;

//declaracion del arreglo con su dimension/tamaño
PImage[] escenario =  new PImage[c];
PImage[] accesorio =  new PImage[c];
PImage[] imagenDialogo =  new PImage[c];
int [] arrayImagenDialogo = {0,31, 22,31,21,0,27,30,29,0,20,0,0,6,5,2,0,20,7,19,0,0,17,5,4,0,0,0,0,0,26,1,24,6,24,3,23,1,26,3,23,1,23,0,33,32,0,0,3,3,26,0,20,31,0,25,6,24};
//declaracion del arreglo con su dimension/tamaño
String[] texto = new String[c];


void setup() {
  size (600, 600);
  colorMode(HSB, 360, 100, 100);
  estado = 0;
  botonestados = true;
  dialogo=0;


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
    println( "menu" );
    background (200, 0, 0);
    image( escenario[0], 0, 0 );




    break;
  case 1:
    println( "escena-1" );
    background (150, 0, 0);
    image( escenario[1], 0, 0 );

    image( accesorio[0], 10, 10, 580, 150);
    dibujobotonsiguiente (true);
    dibujobotonsiguiente (false);  
    desarrollo (0, 15);
    
    if (!botonestados){
      dialogo (1, 5);
    }
    
    
    
    break;
  case 2:
    println( "P02" );
    background (0, 100, 0);

    image( escenario[2], 0, 0 );
    image( accesorio[0], 10, 10, 580, 120);
    dibujobotonsiguiente (true);
    dibujobotonsiguiente (false);
    println(botonestados);
    desarrollo (5,15);
    if (!botonestados){
      dialogo (6, 9);
    }
    
    break;
  case 3:
    println( "P03 - DECISION" );
    background (0, 200, 0);

    image( escenario[3], 0, 0 );
    image( accesorio[0], 10, 10, 580, 200);
    dibujobotonsiguiente (false);
    if (botonestados){
     dibujobotonsiguiente (true);
    }
   
    
    desarrollo (9,15);
    if (!botonestados){
      dialogo (10, 11);
      botonDecision(20, 550, "Familia");
     botonDecision(380, 550, "Fantasma");
    }
    
   
    break;
  case 4:
    println( "P04" );
    background (0, 0, 200);

    image( escenario[4], 0, 0 );
    image( accesorio[0], 10, 10, 580, 180);
    dibujobotonsiguiente (true);
    dibujobotonsiguiente (false);
    
    desarrollo (12, 15);
    if (!botonestados){
      dialogo (13, 16);
    }
    
    break;
  case 5:
    println( "P05" );
    background (100, 0, 100);

    image( escenario[5], 0, 0 );
    image( accesorio[0], 10, 10, 580, 100);
    dibujobotonsiguiente (true);
    dibujobotonsiguiente (false);
    
    desarrollo (16,15);
    if (!botonestados){
      dialogo (17, 20);
    }
    
    break;
  case 6:
    println( "P06" );
    background (100, 0, 0);

    image( escenario[6], 0, 0 );
    image( accesorio[0], 10, 10, 580, 180);
    dibujobotonsiguiente (true);
    dibujobotonsiguiente (false);
    
    desarrollo (20,15);
    
    break;
  case 7:
    println( "P07 - DECISION" );
    background (0, 200, 200);

    image( escenario[7], 0, 0 );
    image( accesorio[0], 10, 10, 580, 200);
    dibujobotonsiguiente (false);
    if (botonestados){
     dibujobotonsiguiente (true);
    }
    
    desarrollo (21, 15);
    if (!botonestados){
      dialogo (22, 25);
       botonDecision(20, 550, "Familia");
       botonDecision(380, 550, "Fantasma");
    }
    
    break;
  case 8:
    println( "P08" );
    background (0, 0, 100);

    image( escenario[4], 0, 0 );
    image( accesorio[0], 10, 10, 580, 250);
    dibujobotonsiguiente (true);
    dibujobotonsiguiente (false);
    
    desarrollo (25,14);
    
    break;
  case 9:
    println( "P09" );
    background (0, 0, 200);

    image( escenario[9], 0, 0 );
    image( accesorio[0], 10, 10, 580, 250);
    dibujobotonsiguiente (true);
    dibujobotonsiguiente (false);
    
    
    //editar texto, para q quede más corto
    desarrollo (26,13);
    break;
  case 10:
    println( "P10" );
    background (0, 200, 0);

    image( escenario[4], 0, 0 );
    image( accesorio[0], 10, 10, 580, 220);
    dibujobotonsiguiente (true);
    dibujobotonsiguiente (false);
    
    desarrollo (27, 15);
    
    break;
  case 11:
    println( "P11 - DECISION" );
    background (0, 150, 0);

    image( escenario[5], 0, 0 );
    image( accesorio[0], 10, 10, 580, 180);
    dibujobotonsiguiente (false);
    
    desarrollo (28, 15);
    botonDecision(20, 550, "Familia");
    botonDecision(380, 550, "Virginia");
    
    break;
  case 12:
    println( "P12 - DECISION" );
    background (200, 0, 0);

    image( escenario[12], 0, 0 );
    image( accesorio[0], 10, 10, 580, 160);
    dibujobotonsiguiente (false);
     dibujobotonsiguiente (true);

    desarrollo (29,15);
    
     if (!botonestados){
      dialogo (30, 34);
    }
    
    break;
  case 13:
    println( "P13" );
    background (0, 0, 150);

    image( escenario[13], 0, 0 );
    dibujobotonsiguiente (true);
    dibujobotonsiguiente (false);
    
     if (!botonestados){
      dialogo (42, 46);
    }
    
    break;
  case 14:
    println( "P14" );
    background (0, 0, 200);

    image( escenario[14], 0, 0 );
    image( accesorio[0], 10, 10, 580, 200);
    dibujobotonsiguiente (true);
    dibujobotonsiguiente (false);
    
    desarrollo (47,15);
    
    break;
  case 15:
    println( "P15- FIN" );
    background (0, 150, 0);

    image( escenario[15], 0, 0 );
    image( accesorio[0], 10, 10, 580, 200);
    dibujobotonsiguiente (true);
    dibujobotonsiguiente (false);
    
    desarrollo (48,15);
     if (!botonestados){
      dialogo (49, 51);
    }
    
    break;
  case 16:
    println( "P16 - FIN" );
    background (150, 0, 0);

    image( escenario[1], 0, 0 );
    image( accesorio[0], 10, 10, 580, 120);
    dibujobotonsiguiente (true);
    dibujobotonsiguiente (false);
    
    desarrollo (51,15);
     if (!botonestados){
      dialogo (52, 54);
    }
    
    break;
  case 17:
    println( "P17- FIN" );
    background (0, 0, 150);

    image( escenario[12], 0, 0 );
    dibujobotonsiguiente (true);
    dibujobotonsiguiente (false);
    if (!botonestados){
      dialogo (54, 58);
    }
    //desarrollo (12, 100, 40,20);
    
    break;
  case 18:
    println( "P18- CREDITOS" );
    background (200);

    image( escenario[16], 0, 0 );


    break;
     case 19:
    println( "P19 - DECISION" );
    background (200, 0, 0);

    image( escenario[12], 0, 0 );
    image( accesorio[0], 10, 10, 580, 160);
    dibujobotonsiguiente (false);
    dibujobotonsiguiente (true);  
    
    desarrollo (29,15);
    
     if (!botonestados){
      dialogo (34, 38);
    }
    break;
     case 20:
    println( "P20 - DECISION" );
    background (200, 0, 0);

    image( escenario[12], 0, 0 );
    image( accesorio[0], 10, 10, 580, 160);
    dibujobotonsiguiente (false);
    if (botonestados){
     dibujobotonsiguiente (true);
    }
   
    desarrollo (29,15);
    
     if (!botonestados){
      dialogo (38, 42);
      botonDecision(20, 550, "Si acepta");
      botonDecision(380, 550, "Se niega");
    }
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
      if (botonestados) {
        pantallaAnterior.add(estado);
        botonestados=false;
      } else if (!botonestados) {
        estado=2;
        botonestados=true;
      }
    } else if ( estado == 2) {
      if (botonestados) {
        pantallaAnterior.add(estado);
        botonestados=false;
      }else if (!botonestados) {
        estado=3;
        botonestados=true;
      }
    } else if ( estado == 3) {
      if (botonestados) {
        botonestados=false;
      }
    } else if ( estado == 4) {
      if (botonestados) {
        pantallaAnterior.add(estado);
        botonestados=false;
      }else if (!botonestados) {
        estado=7;
        botonestados=true;
      }
    } else if ( estado == 5) {
      if (botonestados) {
        pantallaAnterior.add(estado);
        botonestados=false;
      }else if (!botonestados) {
        estado=6;
        botonestados=true;
      }
    } else if ( estado == 6) {
        pantallaAnterior.add(estado);
        estado=7;
    } else if ( estado == 7) {
      if (botonestados) {
        botonestados=false;
      }
    }else if ( estado == 8) {
     pantallaAnterior.add(estado);
        estado=9;
    } else if ( estado == 9) {

       pantallaAnterior.add(estado);
        estado=10;
    } else if ( estado == 10) {
     
        pantallaAnterior.add(estado);
        botonestados=true;
        estado=12;
    } else if ( estado == 12) {
      if (botonestados) {
        pantallaAnterior.add(estado);
        botonestados=false;
      } else if (!botonestados) {
        estado=19;
        botonestados=true;
      }
    } else if ( estado == 19) {
      if (botonestados) {
        pantallaAnterior.add(estado);
        botonestados=false;
      } else if (!botonestados) {
        estado=20;
        botonestados=true;
      }
    } else if ( estado == 20) {
      if (botonestados) {
        botonestados=false;
      }
    } else if ( estado == 13) {
      if (botonestados) {
        pantallaAnterior.add(estado);
        botonestados=false;
      }else if (!botonestados) {
        estado=15;
        botonestados=true;
      }
    } else if ( estado == 14) {
        pantallaAnterior.add(estado);
        estado=16;
    } else if ( estado == 15) {
      if (botonestados) {
        pantallaAnterior.add(estado);
        botonestados=false;
      }else if (!botonestados) {
        estado=18;
        botonestados=true;
      }
    } else if ( estado == 16) {
      if (botonestados) {
        pantallaAnterior.add(estado);
        botonestados=false;
      }else if (!botonestados) {
        estado=18;
        botonestados=true;
      }
    } else if ( estado == 17) {
      if (botonestados) {
        pantallaAnterior.add(estado);
        botonestados=false;
      }else if (!botonestados) {
        estado=18;
        botonestados=true;
      }
    }

  } else if ( (botonsiguiente (35, 35, 22))&&(estado != 0) &&(estado!=18)) {
    dialogo=0;
    botonestados=true;
    estado= pantallaAnterior.get(pantallaAnterior.size()-1);
    pantallaAnterior.remove(pantallaAnterior.size()-1);
  } else if ( (boton (182, 300, 236, 54))&&( estado == 0)) {
    botonestados=true;
    pantallaAnterior.add(estado);
    estado = 1;
  } else if  ((boton (182, 380, 236, 54))&&(estado == 0)) {
    pantallaAnterior.add(estado);
    estado = 18;
  } else if ( estado == 3  && boton (20, 550, 200, 30)) {  //izquierda pantalla
    pantallaAnterior.add(estado);
    botonestados=true;
    estado = 5;
  } else if ( estado == 3 && boton (380, 550, 200, 30)) {  //derecha pantalla
    pantallaAnterior.add(estado);
    botonestados=true;
    estado = 4;
  } else if ( estado == 7 &&  boton (20, 550, 200, 30)) {  //izquierda pantalla
    pantallaAnterior.add(estado);
    botonestados=true;
    estado = 11;
  } else if ( estado == 7 && boton (380, 550, 200, 30)) {  //derecha pantalla
    pantallaAnterior.add(estado);
    botonestados=true;
    estado = 8;
  } else if ( estado == 11 &&  boton (20, 550, 200, 30)) {  //izquierda pantalla
    pantallaAnterior.add(estado);
    botonestados=true;
    estado = 14;
  } else if ( estado == 11 && boton (380, 550, 200, 30)) {  //derecha pantalla
    pantallaAnterior.add(estado);
    botonestados=false;
    estado = 12;
  } else if ( estado == 20 &&  boton (20, 550, 200, 30)) {  //izquierda pantalla
    pantallaAnterior.add(estado);
    dialogo=0;
    botonestados=true;
    estado = 13;
  } else if ( estado == 20 &&  boton (380, 550, 200, 30)) {  //derecha pantalla
    pantallaAnterior.add(estado);
    dialogo=0;
    botonestados=true;
    estado = 17;                                                        //SEGUNDO FINAL
  } else if ( estado == 18 && boton (342, 528, 236, 54) ) {
    pantallaAnterior.clear();
    botonestados=true;
    estado = 0;                                                        //TERCER FINAL
  }
}
