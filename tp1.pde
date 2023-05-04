PImage icono;
PImage fondo;
PImage mapa;
PImage img, img1, img2, img3, img4, img5;


PFont fuente1, fuente2, fuente3, fuente4;

color Cboton = color (250, 210, 150);
color Ctext = color (180, 100, 40);

int opacidad1, opacidad2;
int X, Y, tam, vel;
float tamx, tamy;

// botones
boolean botonInicio, botonReinicio= false;
//MAQUINA DE ESTADOS
int marcaEnElTiempo;
int diferenciaTemporal;
int estado;   //pantalla

void setup () {
  size (640, 480);
  icono= loadImage ("icono.png");
  fondo= loadImage ("P1-fondo.jpg");
  mapa= loadImage ("mapa.png");
  img= loadImage ("P2-img.jpg");
  img1= loadImage ("P3-dormilon1.png");
  img2= loadImage ("P3-dormilon2.png");
  img3= loadImage ("P3-dormilon3.png");
  img4= loadImage ("P4-img1.jpg");
  img5= loadImage ("P4-img2.jpg");

  fuente1=loadFont ("EdwardianScriptITC-100.vlw");
  fuente2= loadFont ("CourierNewPSMT-20.vlw");
  fuente3=loadFont ("CourierNewPSMT-100.vlw");
  fuente4= loadFont ("GillSans-UltraBoldCondensed-100.vlw");
  X=0;
  vel=2;
  tam= 0;

  tamx= 0;
  tamy= 0;

  //MAQUINA DE ESTADOS
  estado = 0;
}

void draw () {
  background (200, 110, 50); //repetido en inicio

  diferenciaTemporal = millis() - marcaEnElTiempo;


  //INICIO
  if (estado == 0) {
    background (200, 110, 50);

    //boton
    fill (Cboton);
    noStroke ();
    rect (245, 260, 150, 50);

    image (icono, 215, 100, 212, 212);
    //texto boton
    fill (Ctext);
    textFont (fuente1);
    textSize (30);
    text ("Comenzar", 270, 290);

    botonInicio= (mouseX>245)&& ( mouseX < 395 ) && ( mouseY > 260) && ( mouseY < 310);
    //MAQUINA DE ESTADOS
    if (botonInicio) {
      Cboton = color (180, 100, 40);
      Ctext = color (250, 210, 150);
    } else {
      Cboton = color (250, 210, 150);
      Ctext = color (180, 100, 40);
    }
  } else if (estado==1) {
    if (diferenciaTemporal >= 4000) {
      estado=2;
      X= 0;
      opacidad1=0;
      opacidad2=0;
      vel=2;
      tam=0;
      marcaEnElTiempo = millis();
    }
  } else if (estado==2) {
    if (diferenciaTemporal >= 6000) {
      estado=3;
      X=0;
      Y=0;
      opacidad1=0;
      opacidad2=0;
      vel=2;
      tam=0;
      tamx= 0;
      tamy=0;
      marcaEnElTiempo = millis();
    }
  } else if (estado==3) {
    if (diferenciaTemporal >= 6000) {
      estado=4;
      X=0;
      Y=0;
      opacidad1=0;
      opacidad2=0;
      vel=2;
      tam=0;
      tamx= 0;
      tamy=0;

      marcaEnElTiempo = millis();
    }
  } else if (estado==4) {
    if (diferenciaTemporal >= 5000) {
      estado=5;
      X=0;
      Y=0;
      opacidad1=0;
      opacidad2=0;
      vel=2;
      tam=0;
      tamx= 0;
      tamy=0;
      marcaEnElTiempo = millis();
    }
  }




  println (estado);
  println (marcaEnElTiempo +"/" + diferenciaTemporal);


  //PANTALLA 1
  if (estado==1) {

    //fondo
    opacidad1= opacidad1+2;
    tint(240, 200, 150, opacidad1);
    image (fondo, -100, 0, 742, 480);

    //texto
    opacidad2= opacidad2+3;
    textFont (fuente4);
    X = X+5;
    fill (255, 255, 255, opacidad2);
    text ("panda rojo", 640-X, 200);
    //texto
    textFont (fuente3);
    X = X+4;
    textSize (45);
    text ("Una especie adorable \nen peligro.", -450+X, 400);


    if (X>=450) {
      X = X+5;
    }
    if (X>=320) {
      X-= 5;
    }
  }


  //PANTALLA 2
  //fondo   repetido de pantalla 1 analizar si solo dejar variable en transición
  else if (estado==2) {
    opacidad1= opacidad1+2;
    tint(240, 200, 150, 255-opacidad1);
    image (fondo, -100, 0, 742, 480);

    //text TITULO
    opacidad2= opacidad2+2;
    textFont (fuente4);
    X = X+5;
    fill (255, 255, 255, opacidad2);
    text ("HABITAD", 640-X, 170);
    if ( opacidad1 >=255 ) {
      X= 630;
    }

    //text regiones
    textFont (fuente2);

    text ("#Selvas del \n Himalaya", 450, Y+25 );
    text ("#Montañas \n Hunam", 450, Y+65 );
    text ("#Schuan del \n (China)", 450, Y+105 );
    text ("#Norte de \n Birmania", 450, Y+145 );
    text ("#Nepal", 450, Y+185 );

    //mapa
    tint (255, 255, 255, 255);
    Y= Y+3;
    image (mapa, 10, Y, 381, 192);

    //imagen esquina derecha
    image (img, 450, 20, tam, tam);
    if ( opacidad1 >=122 ) {
      Y= 185;
      if (X>=600) {
        tam= tam+2;
        if (tam >= 160) {
          tam=160;
        }
      }
    }
  }




  //PANTALLA 3
  else if (estado==3) {

    //text TITULO
    textFont (fuente4);
    textSize (80);
    X = X+7;
    fill (255);
    text ("De los animales \nmás perezosos \ndel planeta.", 640-X, 170);

    //text
    textFont (fuente3);
    textSize (40);
    fill (255, 255, 255, opacidad1);
    text ("Duerme entre \n10 y 12 horas \ndiarias.", 20, 200);

    //imagen sup izquierda
    tint (255, 255, 255, opacidad2);
    image (img2, 20, 20, 320, 134);

    //imagen derecha
    tint (255, 255, 255, 255);
    image (img1, 350, -480+Y, 265, 445);

    //imagen inf derecha
    image (img3, 20, 300, tamx, tamy);

    if ( X>=600) {
      X= X-6;
      if ( X>=650) {
        X= X+7;
        if ( X>690) {
          X= X+7;
          opacidad1+= 1;
          opacidad2+= 1;
          Y= Y+3;
          tamx+= 1.9;
          tamy+= 1;
          if ( Y>=500) {
            Y= 500;
            tamx= 320;
            tamy= 168;
          }
        }
      }
    }
  }



  //PANTALLA 4

  else if (estado==4) {

    //imagenes
    X= X+10;
    tint (255, 255, 255, 255);
    image (img4, X-350, 110, 350, 350);

    tint (255, 255, 255, opacidad1);
    image (img5, 0, 0, 640, 480);


    //text TITULO
    opacidad2+= 3;
    tam= tam+1;
    textFont (fuente4);
    textSize (tam);
    fill (255, 255, 255, opacidad2);
    text ("Más curiosidades...", 10, 100);


    //text
    //text regiones
    textFont (fuente2);
    fill (255, 255, 255, opacidad2);

    text ("#Tiene el tamaño de un gato domestico", 55, 620-Y );
    text ("#Su pelaje cobriso lo ayuda a camuflarse", 55, 600-Y );
    text ("#Utiliza su cola grande y esponjosa para \ncubrirse mientras duerme", 55, 560-Y );
    text ("#Su principal alimento es el bambú", 55, 540-Y );
    text ("#El 17 de septiembre se celebra el \ndía del panda rojo", 55, 500-Y );

    if ( opacidad2 >=210 ) {
      tam=70;
      opacidad1= opacidad1 +1;
    }
    if (X>=850) {
      Y= Y+4;
      if (Y>=300) {
        Y= 300;
        opacidad1= 98;
      }
    }
  }




  //FIN
  else if (estado==5) {
    //fondo
    opacidad1= opacidad1+1;
    tint(240, 200, 150, 98-opacidad1);
    image (img5, 0, 0, 640, 480);

    //boton
    fill (Cboton);
    noStroke ();
    rect (480, 410, 150, 50);


    opacidad1=opacidad1+1;
    tint (255, 255, 255, opacidad1/2);
    image (icono, 440, 248, 212, 212);

    //texto boton
    fill (Ctext);
    textFont (fuente1);
    textSize (40);
    text ("Reiniciar", 495, 445);

    botonReinicio= (mouseX>480)&& ( mouseX < 630 ) && ( mouseY > 410) && ( mouseY < 460);
    if (botonReinicio) {
      Cboton = color (180, 100, 40);
      Ctext = color (250, 210, 150);
    } else {
      Cboton = color (250, 210, 150);
      Ctext = color (180, 100, 40);
    }
    //text TITULO
    X= X+3;
    textSize (50);
    fill (255, 255, 255, opacidad1);
    text ("Gracias por su atención...", 640-X, 70);

    //imagen
    tint (255, 255, 255, opacidad1);
    image (fondo, 640-X, 100, 350, 219);
    if (X>= 610) {
      X=610;
    }
  }
}


void mousePressed () {
  //crear boton de inicio
  if (botonInicio) {
    estado=1;
    marcaEnElTiempo = millis();
    X= 0;
    opacidad1=0;
    botonInicio=false;
  }

  //crear boton de reinicio
  else if (botonReinicio) {
    println("estoy aqui");
    estado = 0;
    tint (255);
    marcaEnElTiempo = millis();
    botonReinicio=false;
  }
}
