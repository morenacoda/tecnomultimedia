//video presentación tp2
//https://youtu.be/nutXOsDzcl4


PImage miImagen;

int tam;
int i, j=0;
int columna;

boolean intercambiarColor=false;
boolean colorCuadrado=false;
boolean circulo=false;
boolean movimiento= false;

boolean estadodegrade= false;

float degradex;
float degradey;

color coscuro, cclaro;

void setup () {
  size (800, 400);
  miImagen= loadImage ("img_tp2.jpg");
  colorMode(HSB, 360, 100, 100);

  columna= 0;
  coscuro= color (0);
  cclaro= color (360);
  i=0;
  tam=44;
}

void draw () {

  //CICLO FOR anidado-----> dibuja cuadrados en filas y columnas
  for (int x=10; x<880; x+=tam) {
    j=1;
    for (int y=0; y <400; y+=tam) {
      //modulo----> separar cuadrados y generar "columnas corridas"
      if ((j%4==0) || (j%4==1)) {
        x+= columna;
        stroke (0);
      } else {
        x-= columna;
        stroke (255);
      }

//si circulo es verdadero genera efecto de circunferencia donde los cuadrados q estan por fuera de la distancia definida son de un unico color
      if (circulo) {
        if (!circuloSombra(x, y, 300)) {
          coloresCuadrado( i);
        } else {
          if (intercambiarColor) {
            fill (coscuro);
            stroke (coscuro);
          } else {
            fill (cclaro);
            stroke (cclaro);
          }
        }
      } else {
        coloresCuadrado( i);
      }
      if ((movimiento== true) && (dist(mouseX, mouseY, x, y)<tam)){
       tam= 50;
      }else {tam=44;}
      
      cuadrado(x, y, tam);
      j++;
    }
    i++;
  }

  //DEGRADE mapeando los pixeles de la pantalla desde el final de la imagen "trasladandolo" a la opacidad de la variable color
  float degradex = map( mouseX, 400, 800, 0, 360 );
  float degradey = map( mouseY, 400, 800, 0, 360 );

  if (estadodegrade== true) {
    coscuro= color (degradex);
    cclaro= color (-degradey);
  }


  image (miImagen, 0, 0, 400, 400);
}

//FUNCION no retorna valor-----> dibuja cuadrado
void cuadrado (int x, int y, int tam) {
  rect (x, y, tam, tam);
}


//FUNCION retorna valor-----> mide la distancia, retorna verdadero si el cuadrado (coordenada en que se dibuja) esta adentro en relacion al mouse
boolean circuloSombra (int x, int y, int tamCirculo) {
  boolean retorno = false;
  if (x>390) {
    if (dist(mouseX, mouseY, x, y)>tamCirculo/2) {
      retorno= true;
    }
  }
  return retorno;
}





//FUNCION no retorna valor-----> dibuja color c/cuadrado de acuerdo a su pocición en la cuadricula (par o impar)
void coloresCuadrado(int i) {

    if (i%2==1) {
      fill (cclaro);
      stroke (coscuro);
    } else {
      fill (coscuro);
      stroke (cclaro);
    }
 
}

void keyPressed () {
  //invierte el color de los cuadrados por fuera de la distancia establecida
  if (key=='v') {
    intercambiarColor=!intercambiarColor;
  }
  //invierte el color de todos los cuadrados
  if (key=='c') {
    color invertircolor= cclaro;
    cclaro=coscuro;
    coscuro=invertircolor; 
  }
  //habilita y deshabilita la distancia que genera la circunferencia
  if (key=='x') {
    circulo=!circulo;
  }

  //Evento-----> cambio el estado y "habilito" la moodificaciones de la opacidad mediante el mov del cursor
  if (key=='b') {
    estadodegrade=!estadodegrade;
  }
  //modifica los valores de la variable color
  if (key== 'z') {
    coscuro= color (58, 81, 93); //amarillo
    cclaro= color (141, 67, 56); //verde
  }

  //Evento-----> "reinicio" valor de las variables
  if (keyCode== 32) {
    i= 0;
    j=0;
    intercambiarColor=false;
    colorCuadrado=false;
    circulo=false;
    coscuro= color (0);
    cclaro= color (360);
    estadodegrade= false;
    columna= 0;
    movimiento= false;
  }
}

void mousePressed() {
  //Evento-----> Cambio posicion cuadrados, realizo el corrimiento de las filas, genero la ilusión
  // habilito el cambio de tamaño del cuadrado según la posición del cursor
  columna=10;
  movimiento= true;
}
