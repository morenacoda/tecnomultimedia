PImage miAnimal;

void setup (){
     size (800, 400); 
 miAnimal= loadImage ("panda.jpg");
}
void draw (){
  
  //fondo
  noStroke();
  fill (210, 190, 190);
  quad (0,0,0,300, 100,150,100,0);
  
  fill (170,190,140);
  rect (100,0, 300,150);
  
  fill (150,200,150);
  quad (100,150, 0,300, 400,300, 400,150);
  
  fill (150,200,150);
  rect (0,300,400,100);
  
  fill(220);
  rect(300,0,100, 200);
  
  
  image (miAnimal, 400,0);
  
  //pastito
  fill (75,170,50);
  triangle (350,170, 340,205,360,205);
  fill (75,140,50);
   triangle (340,180, 335,205,345,205);
   fill (60,100,30);
   triangle (360,195, 365,205,355,205);
     
  fill (75,140,50);
  triangle (310,310, 310,350,330,350);
  fill (75,170,50);
   triangle (300,320, 290,350,310,350);
   fill (60,100,30);
   triangle (305,335, 305,350,315,350);
   
   fill (75,170,50);
  triangle (80,170, 70,205,90,205);
  fill (60,100,30);
   triangle (70,180, 65,205,80,205);
   fill (75,140,50);
   triangle (90,195, 85,205,95,205);
   
   fill (75,170,50);
  triangle (100,290, 90,305,110,305);
  fill (60,100,30);
   triangle (90,250, 85,305,95,305);
   fill (75,140,50);
   triangle (85,275, 80,305,92,305);
   
  // brazo 1
  fill(50);
  ellipse (150, 205, 45,26);
  
  // patita 1
  fill (50);
  ellipse (155,270,60,40);
  ellipse (138,265,25,45);
  
  //cuerpo
   fill (50);
  circle (275,270,25);
  fill (230);
  ellipse (215, 225, 140, 160);
  
  //oreja 1
   fill(50);
  circle(145,95,25);
  
    // orejas 2
  fill(50);
  circle(235,74,25);
  
  //cabeza
  fill (240);
  circle (200,125,110);
  
  //patita 2
  fill (50);
  ellipse (210,290,90,40);
  ellipse (180,285,30,45);
 
    //franja
  ellipse (215, 210,140,50);
  circle (255,195,55);
  
   //bambu
 fill (75,170,50);
 quad (185,150,135,235,145,240,195,155);
 fill (75,140,50);
 quad (190,190,135,235,145,240,200,195);
 
  //brazo 2
  fill(50);
  quad (145,200,205,220,225,200,165,180);
  circle (157,191,26);
  circle (214,209,26);
  
//rostro
  circle (172,120,20);
  circle (170,125,20);
  circle (215,115,20);
  circle (220,120,21);
  ellipse (200,140,20,10);
  fill (200);
  circle (171, 123, 3);
  circle (212, 117, 3);
  stroke (50);
  line (190, 125, 200, 123);
  line (200,145, 205, 155);
  line(198, 158, 212, 153);

}
