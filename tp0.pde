
 PImage paisaje;

void setup() {
  size(800,400);
  paisaje = loadImage("paisajee.jpg");
}
void draw(){
  colorMode(RGB);
  background(194,222,234);
  image(paisaje,0,0);
  
  //globo
 fill(250,244,53);
 triangle(600,120,600,185,650,120);
 triangle(600,120,600,185,550,120);
 ellipse(600,108,101,101);
 // cuadrado del globo 
 fill(0,0,0);
 rect(595,191,10,10);
 //montañas
 fill(62,45,4);
 triangle(400,300,600,220,800,300);
 quad(800,200,500,300,550,400,800,400);
 quad(400,215,500,220,625,400,400,400);
 //cesped
 fill(177,191,139);
 rect(400,340,400,100);
  
 
  
 

}
