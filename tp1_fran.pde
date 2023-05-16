
//franco panetta lozano, legajo 94806/7
//tp1, presentación sobre el mar argentino

PImage imagen1, imagen2, imagen3;
PFont Fuente;
int contador = 0;
int textoX = 0;
int textoY = 0;
int fade = 0;


void setup(){
  size(640, 480);
  imagen1 = loadImage("imagen1.jpg");
  imagen2 = loadImage("imagen2.jpg");
  imagen3 = loadImage("imagen3.jpg");

  Fuente = loadFont("CenturyGothic-48.vlw");

};

void draw(){

  //tiempo de cada imagen
  if(contador < 2200){
    contador++;
  }

  //condiciones
  if(contador <600){
    image(imagen1, 0, 0,640,480);

    //texto de la primer pantalla
    textFont (Fuente, 22);
    textAlign(CENTER,CENTER);
    fill(0);
    text("Es un mar litoral y \n  epicontinental \n ya que cubre parte del margen continental argentino.",300, textoX);
    textoX++;
    

  } else if (contador > 600 && contador < 1500){
    image(imagen2, 0, 0,640,480);

    //texto pantalla dos
    textFont(Fuente, 28);
    textAlign(CENTER, TOP);
    fill(255);
    text("Se trata de la plataforma de suave pendiente \n que se extiende desde \n  la costa hasta los 200 metros de profundidad \n aproximadamente.",textoY,350);
    textoY++;

  } else if (contador > 1500 ) {
    image(imagen3, 0, 0,640,480);

    //texto pantalla tres
    textFont(Fuente, 23);
    textAlign(BOTTOM,CENTER);
     fill(255, fade);
    text("Los océanos \n  cubren más del 70% de la superficie de la Tierra \n  y su importancia es crucial para la supervivencia \n  de la biota planetaria  entre la que nos encontramos \n  nosotros mismos como especie.", 50, 300);
    fade++;


    //boton 
    fill(185);
    rect(130, 420, 100, 50);
    textAlign(LEFT, CENTER);
    textSize(15);
    fill(0);
    text("reiniciar", 142, 445);

  }

};

void mousePressed() {
  if(contador > 1500 && mouseX > 130 && mouseX < 230 && mouseY > 420 && mouseY < 470){
  contador = 0;
  textoX = 0;
  textoY = 0;
  fade = 0;
  }
}
